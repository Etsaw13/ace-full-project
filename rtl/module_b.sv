// =====================================================================
// module_b.sv - Module B: full-ACE slave + home node (初版)
// 依据: doc/design_report.md §3.3(端口) §5(设计) §5.4-5.5(行为规格)
//
// 结构 (两平面 + 共享状态单元):
//   ① slave 引擎 : 主 FSM (B_W→B_B / B_R), RRESP 标签生成, 写数据 PRBS 互核
//   ② home node  : 目录驱动质询发起 (空闲门控) + CR 逐位校验 + CD 收货 + 超时保护
//   ③ 共享状态单元: 目录(4行,4态镜像) + 内存阵列(4行128b, 空行=PRBS)
//   ④ PRBS 单元  : ace_pkg::prbs128, 与 Module A 同公式
//
// 关键约定:
//   - 串行事务: AW/AR 仅在空闲时接收 (背压即合法, 支持后续 Mode B 重叠)
//   - RRESP 标签: RU→OKAY|PassDirty (制造脏行喂闭环); RS 且目录已有该行→OKAY|IsShared
//   - 出题: UD 行发 CleanInvalid (收 CD 数据); SC/UC 行 RS/MI/CI/RO 四类轮转
//   - CD 收货: DT=1 时接收整行, PRBS 逐位校验 (err_cd_data), 写内存, 目录销账
//   - 目录在 rack/wack 时刻登记 (与 A 的行状态镜像), 质询完成时销账/降级
//   - cfg_err_inject[0]=BRESP 回 SLVERR; [1]=期望应答取反 (反验校验器)
//   - cfg_err_clr 为端口表之外的补充引脚 (错误锁存清除)
// =====================================================================
`timescale 1ns / 1ps
`default_nettype none

import ace_pkg::*;

module module_b (
  // ---------------- 时钟复位 ----------------
  input  wire                  aclk,
  input  wire                  areset_n,

  // ---------------- AW 通道 (入) ----------------
  input  wire                  awvalid,
  output logic                 awready,
  input  wire [ID_W-1:0]       awid,
  input  wire [ADDR_W-1:0]     awaddr,
  input  wire [LEN_W-1:0]      awlen,
  input  wire [2:0]            awsize,
  input  wire [1:0]            awburst,
  input  wire [3:0]            awregion,
  input  wire                  awlock,
  input  wire [3:0]            awcache,
  input  wire [2:0]            awprot,
  input  wire [3:0]            awqos,
  input  wire [2:0]            awsnoop,
  input  wire [1:0]            awdomain,
  input  wire [1:0]            awbar,
  input  wire                  awunique,

  // ---------------- W 通道 (入) ----------------
  input  wire                  wvalid,
  output logic                 wready,
  input  wire [DATA_W-1:0]     wdata,
  input  wire [STRB_W-1:0]     wstrb,
  input  wire                  wlast,

  // ---------------- B 通道 (出) ----------------
  output logic                 bvalid,
  input  wire                  bready,
  output logic [ID_W-1:0]      bid,
  output logic [1:0]           bresp,

  // ---------------- AR 通道 (入) ----------------
  input  wire                  arvalid,
  output logic                 arready,
  input  wire [ID_W-1:0]       arid,
  input  wire [ADDR_W-1:0]     araddr,
  input  wire [LEN_W-1:0]      arlen,
  input  wire [2:0]            arsize,
  input  wire [1:0]            arburst,
  input  wire [3:0]            arregion,
  input  wire                  arlock,
  input  wire [3:0]            arcache,
  input  wire [2:0]            arprot,
  input  wire [3:0]            arqos,
  input  wire [3:0]            arsnoop,
  input  wire [1:0]            ardomain,
  input  wire [1:0]            arbar,

  // ---------------- R 通道 (出) ----------------
  output logic                 rvalid,
  input  wire                  rready,
  output logic [ID_W-1:0]      rid,
  output logic [DATA_W-1:0]    rdata,
  output logic [RRESP_W-1:0]   rresp,
  output logic                 rlast,

  // ---------------- AC 通道 (出, home 发起) ----------------
  output logic                 acvalid,
  input  wire                  acready,
  output logic [ACVID_W-1:0]   acvid,
  output logic [ADDR_W-1:0]    acaddr,
  output logic [3:0]           acsnoop,
  output logic [2:0]           acprot,

  // ---------------- CR 通道 (入, 校验) ----------------
  input  wire                  crvalid,
  output logic                 crready,
  input  wire [CRRESP_W-1:0]   crresp,

  // ---------------- CD 通道 (入, UD 行收货) ----------------
  input  wire                  cdvalid,
  output logic                 cdready,
  input  wire [DATA_W-1:0]     cddata,
  input  wire                  cdlast,

  // ---------------- 事务确认 (入) ----------------
  input  wire                  rack,
  input  wire                  wack,

  // ---------------- tb 配置 ----------------
  input  wire                  cfg_en,
  input  wire [7:0]            cfg_prbs_code,   // PRBS 种子 (mode=0 用, 与 A 同配)
  input  wire [1:0]            cfg_data_mode,   // 数据码型 (P3-1, 与 A 同配)
  input  wire [7:0]            cfg_xcode,       // 全同字节码型 (P3-1, 与 A 同配)
  input  wire [7:0]            cfg_snoop_gap,   // 两次质询间隔拍数
  input  wire [3:0]            cfg_err_inject,  // [0]=BRESP SLVERR [1]=期望取反
  input  wire                  cfg_err_clr,     // 错误锁存清除 (补充引脚)

  // ---------------- tb 状态 ----------------
  output logic                 err_wr_data,     // 写数据 ≠ 期望码型
  output logic                 err_cd_data,     // CD 收货数据 ≠ 期望码型
  output logic                 err_cr_mismatch, // CRRESP ≠ 目录预期
  output logic                 err_snoop_timeout,
  output logic [31:0]          o_cnt_wr,
  output logic [31:0]          o_cnt_rd,
  output logic [31:0]          o_cnt_snoop,
  output logic                 o_any_err
);

  localparam int IDX_W = $clog2(N_LINES);
  localparam int SNOOP_TIMEOUT = 256;

  // ---- 内存阵列 (VCS 要求: 先声明后使用) ----
  logic [DATA_W-1:0]  mem [N_LINES];
  logic [N_LINES-1:0] mem_written;
  // ---- 目录 (A 侧 cache 镜像; 声明前置: slave 引擎的 RRESP 标签需读目录) ----
  logic             dir_valid [N_LINES];
  logic [TAG_W-1:0] dir_tag   [N_LINES];
  logic [1:0]       dir_state [N_LINES];

  // =====================================================================
  // ④ PRBS 单元 (与 Module A 同公式; 函数体见 ace_funcs.svh)
  // =====================================================================
  `include "ace_funcs.svh"

  // home 期望应答函数 (与 A 的 CRRESP 决策表逐格一致, 4 态 × 5 质询)
  function automatic logic [CRRESP_W-1:0] exp_for(logic [1:0] s,
                                                  logic [3:0] t);
    if (s == ST_UD)                                    // 脏行: 统一交数据
      return (5'b1 << CR_DT) | (5'b1 << CR_PASSDIRTY) | (5'b1 << CR_WASUNIQUE);
    if (s == ST_SC)
      return (t == ARSNOOP_READ_SHARED || t == ARSNOOP_READ_ONCE)
             ? (5'b1 << CR_ISSHARED) : 5'b00000;
    if (s == ST_UC) begin
      if (t == ARSNOOP_READ_SHARED)
        return (5'b1 << CR_WASUNIQUE) | (5'b1 << CR_ISSHARED);
      if (t == ARSNOOP_READ_ONCE || t == ARSNOOP_READ_UNIQUE)
        return 5'b1 << CR_WASUNIQUE;
      return 5'b00000;
    end
    return 5'b00000;
  endfunction

  // =====================================================================
  // ① slave 引擎: 主 FSM
  // =====================================================================
  typedef enum logic [1:0] {B_IDLE, B_W, B_B, B_R} b_e;
  b_e st;

  logic [ID_W-1:0]      aw_id_l, ar_id_l;
  logic [LEN_W-1:0]     aw_len_l, ar_len_l;
  logic [TAG_W-1:0]     aw_line_l, ar_line_l;
  logic [2:0]           aw_sn_l;
  logic [3:0]           ar_sn_l;
  logic [7:0]           beat_cnt;             // 本事务内拍计数

  logic                 wlast_hs, rlast_hs;

  assign awready = (st == B_IDLE);
  assign arready = (st == B_IDLE);

  // ---- W 通道: 逐拍 PRBS 互核 + 写入内存 ----
  logic [TAG_W-1:0]    w_cur_line;
  logic [IDX_W-1:0]    w_mem_idx;
  logic [DATA_W-1:0]   w_exp;

  assign w_cur_line = aw_line_l + {{(TAG_W-8){1'b0}}, beat_cnt};
  assign w_mem_idx  = w_cur_line[IDX_W-1:0];
  assign w_exp      = beat_data(w_cur_line, beat_cnt);
  assign wready     = (st == B_W);

  // ---- B 通道 ----
  assign bvalid = (st == B_B);
  assign bid    = aw_id_l;
  assign bresp  = cfg_err_inject[0] ? 2'b10 : 2'b00;   // SLVERR 注入开关

  // ---- R 通道: 内存有数给真数, 空行现算 PRBS; RRESP 高 2 位打标签 ----
  logic [TAG_W-1:0]    r_cur_line;
  logic [IDX_W-1:0]    r_mem_idx;
  logic [DATA_W-1:0]   r_mem_data;
  logic                r_dir_hit;

  assign r_cur_line = ar_line_l + {{(TAG_W-8){1'b0}}, beat_cnt};
  assign r_mem_idx  = r_cur_line[IDX_W-1:0];
  assign r_mem_data = mem_written[r_mem_idx] ? mem[r_mem_idx]
                                             : beat_data(r_cur_line, beat_cnt);
  assign r_dir_hit  = dir_valid[r_mem_idx] && (dir_tag[r_mem_idx] == r_cur_line);
  assign rvalid     = (st == B_R);
  assign rid        = ar_id_l;
  assign rdata      = r_mem_data;
  // RRESP 标签 (制造一致性流量): [2] RU 恒 PassDirty → A 侧落 UD 行;
  // [3] RS 且目录已有该行 (A 手里已有副本) → IsShared → A 侧落 SC 行
  assign rresp      = {(ar_sn_l == ARSNOOP_READ_SHARED) && r_dir_hit,
                       (ar_sn_l == ARSNOOP_READ_UNIQUE),
                       2'b00};                          // [1:0] 恒 OKAY
  assign rlast      = (beat_cnt == ar_len_l);

  // 读最后拍锁存 r_dir_hit (rack 延迟一拍, rack 拍 beat_cnt 已错位不能现算)
  logic r_is_l;
  always_ff @(posedge aclk or negedge areset_n) begin
    if (!areset_n)          r_is_l <= 1'b0;
    else if (rlast_hs)      r_is_l <= r_dir_hit;
  end

  assign wlast_hs = (st == B_W) && wvalid && wready && wlast;
  assign rlast_hs = (st == B_R) && rvalid && rready && rlast;

  // ---- 主 FSM ----
  always_ff @(posedge aclk or negedge areset_n) begin
    if (!areset_n) begin
      st       <= B_IDLE;
      beat_cnt <= '0;
    end else begin
      case (st)
        B_IDLE: begin
          if (awvalid && awready) begin
            aw_id_l   <= awid;
            aw_len_l  <= awlen;
            aw_line_l <= to_line(awaddr);
            aw_sn_l   <= awsnoop;
            beat_cnt  <= '0;
            st        <= B_W;
          end else if (arvalid && arready) begin
            ar_id_l   <= arid;
            ar_len_l  <= arlen;
            ar_line_l <= to_line(araddr);
            ar_sn_l   <= arsnoop;
            beat_cnt  <= '0;
            st        <= B_R;
          end
        end
        B_W: begin
          if (wvalid && wready) beat_cnt <= beat_cnt + 1'b1;
          if (wlast_hs)         st       <= B_B;
        end
        B_B: if (bvalid && bready) st <= B_IDLE;
        B_R: begin
          if (rvalid && rready) beat_cnt <= beat_cnt + 1'b1;
          if (rlast_hs)         st       <= B_IDLE;
        end
        default: st <= B_IDLE;
      endcase
    end
  end

  // =====================================================================
  // ③ 共享状态单元: 目录 (A 侧镜像, 声明已前置) + 内存阵列
  // =====================================================================
  logic             dir_set_en;                 // rack/wack 登记
  logic [TAG_W-1:0] dir_set_line;
  logic [1:0]       dir_set_st;                 // 登记目标状态 (与 A 行状态镜像)
  logic             dir_rm_en;                  // WriteUnique 作废
  logic [TAG_W-1:0] dir_rm_line;
  logic             home_dir_sc;                // 质询完成: 降级 SC
  logic             home_dir_rm;                // 质询完成: 销账
  logic [IDX_W-1:0] home_dir_idx;
  logic [IDX_W-1:0] h_idx_l;                    // 质询目标目录项 (声明前置: CD 入库需用)

  // rack/wack 时刻的目录登记来源
  always_comb begin
    dir_set_en   = 1'b0;
    dir_set_line = '0;
    dir_set_st   = ST_UC;
    dir_rm_en    = 1'b0;
    dir_rm_line  = '0;
    // rack: 读完成登记 (RU→UD / RS→SC或UC; ReadOnce 不登记)
    if (rack && (ar_sn_l == ARSNOOP_READ_SHARED ||
                 ar_sn_l == ARSNOOP_READ_UNIQUE)) begin
      dir_set_en   = 1'b1;
      dir_set_line = ar_line_l;
      dir_set_st   = (ar_sn_l == ARSNOOP_READ_UNIQUE) ? ST_UD
                   : (r_is_l ? ST_SC : ST_UC);
    // wack: WriteLineUnique 登记 UC; WriteUnique 作废
    end else if (wack && aw_sn_l == AWSNOOP_WRITE_LINE_UNIQUE) begin
      dir_set_en   = 1'b1;
      dir_set_line = aw_line_l;
      dir_set_st   = ST_UC;
    end else if (wack && aw_sn_l == AWSNOOP_WRITE_UNIQUE) begin
      dir_rm_en   = 1'b1;
      dir_rm_line = aw_line_l;
    end
  end

  always_ff @(posedge aclk or negedge areset_n) begin
    if (!areset_n) begin
      for (int i = 0; i < N_LINES; i++) begin
        dir_valid[i]   <= 1'b0;
        dir_tag[i]     <= '0;
        dir_state[i]   <= ST_I;
        mem[i]         <= '0;
        mem_written[i] <= 1'b0;
      end
    end else begin
      // 内存写入 (W 每拍 / CD 交货时)
      if (st == B_W && wvalid && wready) begin
        mem[w_mem_idx]       <= wdata;
        mem_written[w_mem_idx] <= 1'b1;
      end
      if (cdvalid && cdready) begin             // CD 握手即 home 收货 (cdready 已蕴含)
        mem[h_idx_l]         <= cddata;          // 脏行写回入库 (模型写回)
        mem_written[h_idx_l] <= 1'b1;
      end
      // 目录更新优先级: 质询完成 > rack/wack 登记 (场景约定不同拍)
      if (home_dir_rm) begin
        dir_valid[home_dir_idx] <= 1'b0;
      end else if (home_dir_sc) begin
        dir_valid[home_dir_idx] <= 1'b1;
        dir_state[home_dir_idx] <= ST_SC;
      end else if (dir_set_en) begin
        dir_valid[dir_set_line[IDX_W-1:0]] <= 1'b1;
        dir_tag[dir_set_line[IDX_W-1:0]]   <= dir_set_line;
        dir_state[dir_set_line[IDX_W-1:0]] <= dir_set_st;
      end else if (dir_rm_en) begin
        dir_valid[dir_rm_line[IDX_W-1:0]] <= 1'b0;
      end
    end
  end

  // =====================================================================
  // ② home node: 质询发起 + CR 校验 + 超时
  // =====================================================================
  typedef enum logic [2:0] {H_IDLE, H_SEND_AC, H_WAIT_CR, H_WAIT_CD, H_GAP} h_e;
  h_e hs;

  logic [3:0]            h_type_l;         // 已发出质询的类型锁存
  logic [ADDR_W-1:0]     h_addr_l;         // AC阻塞期间保持稳定的地址
  logic [CRRESP_W-1:0]   h_exp_l;          // 已发出质询的期望应答锁存
  logic [1:0]            h_state_l;        // 已发出质询的目录原态锁存
  logic [1:0]            h_rot;            // 出题类型轮转: RS/MI/CI/RO
  logic [ACVID_W-1:0]    vid_cnt;
  logic [8:0]            gap_cnt;
  logic [8:0]            to_cnt;

  // 在途标记 (A 的事务未确认期间不发质询 —— 空闲门控)
  logic aw_pend, ar_pend;
  always_ff @(posedge aclk or negedge areset_n) begin
    if (!areset_n) begin
      aw_pend <= 1'b0;
      ar_pend <= 1'b0;
    end else begin
      if (aw_pend) begin
        if (wack) aw_pend <= 1'b0;
      end else if (st == B_IDLE && awvalid && awready) begin
        aw_pend <= 1'b1;
      end
      if (ar_pend) begin
        if (rack) ar_pend <= 1'b0;
      end else if (st == B_IDLE && arvalid && arready) begin
        ar_pend <= 1'b1;
      end
    end
  end

  // 目录扫描: 固定优先级找最低索引的有效表项
  logic             scan_hit;
  logic [IDX_W-1:0] scan_idx;
  logic [1:0]      scan_state;
  logic [TAG_W-1:0] scan_tag;

  always_comb begin
    scan_hit = 1'b0; scan_idx = 2'd0; scan_state = ST_I; scan_tag = '0;
    if (dir_valid[0]) begin
      scan_hit = 1'b1; scan_idx = 2'd0; scan_state = dir_state[0]; scan_tag = dir_tag[0];
    end else if (dir_valid[1]) begin
      scan_hit = 1'b1; scan_idx = 2'd1; scan_state = dir_state[1]; scan_tag = dir_tag[1];
    end else if (dir_valid[2]) begin
      scan_hit = 1'b1; scan_idx = 2'd2; scan_state = dir_state[2]; scan_tag = dir_tag[2];
    end else if (dir_valid[3]) begin
      scan_hit = 1'b1; scan_idx = 2'd3; scan_state = dir_state[3]; scan_tag = dir_tag[3];
    end
  end

  // Snoop has priority while idle. If A is not ready on the first cycle,
  // H_SEND_AC holds the sampled request and payload until the handshake.
  logic snoop_eligible;
  assign snoop_eligible = cfg_en && !aw_pend && !ar_pend &&
                          !awvalid && !arvalid && !rack && !wack &&
                          scan_hit && (gap_cnt == 0);
  // 出题类型: UD 行固定 CleanInvalid (脏行须交数据, 闭环一专用题型);
  //          SC/UC 行按 h_rot 轮转 RS / MI / CI / RO
  logic [3:0] h_type_next;
  always_comb begin
    h_type_next = (scan_state == ST_UD) ? ARSNOOP_CLEAN_INVALID
                : (h_rot == 2'd0) ? ARSNOOP_READ_SHARED
                : (h_rot == 2'd1) ? ARSNOOP_MAKE_INVALID
                : (h_rot == 2'd2) ? ARSNOOP_CLEAN_INVALID
                :                                ARSNOOP_READ_ONCE;
  end
  assign acvalid = (hs == H_SEND_AC) || ((hs == H_IDLE) && snoop_eligible);
  assign acaddr  = (hs == H_SEND_AC) ? h_addr_l
                                      : {scan_tag, {LINE_SHIFT{1'b0}}};
  assign acsnoop = (hs == H_SEND_AC) ? h_type_l : h_type_next;
  assign acprot  = '0;
  assign acvid   = vid_cnt;

  // 质询完成时的目录更新
  assign crready = (hs == H_WAIT_CR);
  assign cdready = (hs == H_WAIT_CD);     // DT 应答后等收货

  logic err_wr_data_q, err_cr_mismatch_q, err_snoop_timeout_q;   // 提前声明
  logic cr_miss_fire;                                            // 失配单拍脉冲 (home FSM → 错误锁存)

  always_ff @(posedge aclk or negedge areset_n) begin
    if (!areset_n) begin
      hs                <= H_IDLE;
      h_type_l          <= ARSNOOP_READ_SHARED;
      h_addr_l          <= '0;
      h_exp_l           <= '0;
      h_state_l         <= ST_I;
      h_rot             <= 2'd0;
      vid_cnt           <= '0;
      gap_cnt           <= '0;
      to_cnt            <= '0;
      o_cnt_snoop       <= '0;
      home_dir_sc       <= 1'b0;
      home_dir_rm       <= 1'b0;
      home_dir_idx      <= '0;
      cr_miss_fire      <= 1'b0;
    end else begin
      home_dir_sc <= 1'b0;                       // 单拍脉冲默认撤消
      home_dir_rm <= 1'b0;
      cr_miss_fire <= 1'b0;
      case (hs)
        H_IDLE: begin
          if (snoop_eligible) begin
            h_type_l  <= h_type_next;
            h_addr_l  <= {scan_tag, {LINE_SHIFT{1'b0}}};
            h_state_l <= scan_state;
            h_exp_l   <= exp_for(scan_state, h_type_next);
            h_idx_l   <= scan_idx;
            if (acready) begin
              vid_cnt <= vid_cnt + 1'b1;
              to_cnt  <= '0;
              hs      <= H_WAIT_CR;
            end else begin
              hs      <= H_SEND_AC;
            end
          end else if (gap_cnt != 0) begin
            gap_cnt <= gap_cnt - 1'b1;
          end
        end
        H_SEND_AC: begin
          if (acvalid && acready) begin
            vid_cnt  <= vid_cnt + 1'b1;
            to_cnt   <= '0;
            hs       <= H_WAIT_CR;
          end
        end
        H_WAIT_CR: begin
          if (crvalid) begin
            // CR 逐位校验 (注入 [1]: 期望故意取反, 反验校验器)
            if (crresp != (cfg_err_inject[1] ? ~h_exp_l : h_exp_l))
              cr_miss_fire <= 1'b1;              // 脉冲 → 错误锁存块
            home_dir_idx <= h_idx_l;
            o_cnt_snoop <= o_cnt_snoop + 1'b1;
            gap_cnt     <= cfg_snoop_gap;
            h_rot       <= h_rot + 2'd1;
            if (crresp[CR_DT]) begin
              hs <= H_WAIT_CD;                   // DT=1: 先收 CD 数据再销账
            end else begin
              // 目录更新: RS 或 (RO 且原态 SC) → A 留副本 → SC; 其余销账
              if (h_type_l == ARSNOOP_READ_SHARED ||
                  (h_type_l == ARSNOOP_READ_ONCE && h_state_l == ST_SC))
                home_dir_sc <= 1'b1;
              else
                home_dir_rm <= 1'b1;
              hs <= H_GAP;
            end
          end else if (to_cnt == SNOOP_TIMEOUT-1) begin
            hs <= H_IDLE;                          // 超时放弃 (err 已锁存)
          end else begin
            to_cnt <= to_cnt + 1'b1;
          end
        end
        H_WAIT_CD: begin
          if (cdvalid && cdready) begin
            // UD 行交数据后 A 侧作废 → 目录销账 (数据已在收货块入库)
            home_dir_idx <= h_idx_l;
            home_dir_rm  <= 1'b1;
            hs           <= H_GAP;
          end else if (to_cnt == SNOOP_TIMEOUT-1) begin
            hs <= H_IDLE;                          // 超时放弃 (err 已锁存)
          end else begin
            to_cnt <= to_cnt + 1'b1;
          end
        end
        H_GAP: hs <= H_IDLE;
        default: hs <= H_IDLE;
      endcase
    end
  end

  // =====================================================================
  // 校验 / 计数 / 状态输出
  // =====================================================================
  logic err_cd_data_q;                                 // 提前声明 (CD 数据校验)

  always_ff @(posedge aclk or negedge areset_n) begin
    if (!areset_n || cfg_err_clr) begin
      err_wr_data_q      <= 1'b0;
      err_cd_data_q      <= 1'b0;
      err_cr_mismatch_q  <= 1'b0;
      err_snoop_timeout_q<= 1'b0;
    end else begin
      // 写数据逐拍互核
      if ((st == B_W) && wvalid && wready && (wdata != w_exp))
        err_wr_data_q <= 1'b1;
      // CD 收货数据互核 (脏行交回应为 PRBS(line) )
      if (cdvalid && cdready &&
          (cddata != beat_data(to_line(h_addr_l), 8'd0)))
        err_cd_data_q <= 1'b1;
      // 质询超时 (等 CR / 等 CD 两个窗口共用闹钟)
      if ((hs == H_WAIT_CR) && (to_cnt == SNOOP_TIMEOUT-1) && !crvalid)
        err_snoop_timeout_q <= 1'b1;
      if ((hs == H_WAIT_CD) && (to_cnt == SNOOP_TIMEOUT-1) && !cdvalid)
        err_snoop_timeout_q <= 1'b1;
      // CR 失配 (home FSM 脉冲触发)
      if (cr_miss_fire)
        err_cr_mismatch_q <= 1'b1;
    end
  end

  assign err_wr_data       = err_wr_data_q;
  assign err_cd_data       = err_cd_data_q;
  assign err_cr_mismatch   = err_cr_mismatch_q;
  assign err_snoop_timeout = err_snoop_timeout_q;
  assign o_any_err = err_wr_data_q | err_cd_data_q | err_cr_mismatch_q |
                     err_snoop_timeout_q;

  always_ff @(posedge aclk or negedge areset_n) begin
    if (!areset_n)        o_cnt_wr <= '0;
    else if (cfg_err_clr) o_cnt_wr <= '0;
    else if (wack)        o_cnt_wr <= o_cnt_wr + 1'b1;
  end

  always_ff @(posedge aclk or negedge areset_n) begin
    if (!areset_n)        o_cnt_rd <= '0;
    else if (cfg_err_clr) o_cnt_rd <= '0;
    else if (rack)        o_cnt_rd <= o_cnt_rd + 1'b1;
  end

  // 未使用输入 (预留): 属性字段接收不校验, awlen 由 wlast 界定 (CD 已消费)
  wire unused = |{awunique, awregion, awlock, awcache, awprot, awqos, awdomain,
                  awbar, awsize, awburst, arregion, arlock, arcache, arprot,
                  arqos, ardomain, arbar, arsize, arburst, cdlast, aw_len_l};

endmodule

`default_nettype wire
