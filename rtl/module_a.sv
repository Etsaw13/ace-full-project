// =====================================================================
// module_a.sv - Module A: full-ACE master (初版)
// 依据: doc/design_report.md §3.2(端口) §4(设计) §4.4-4.6(行为规格)
//
// 结构 (两平面 + 共享状态单元):
//   ① 场景发生器  : 行号/读写交替/读属性 RS-RU-RS-RO/写属性 WU-WLU 轮转
//   ② 数据面引擎  : 主 FSM (W_AW→W_W→W_B / R_AR→R_R), RACK/WACK 生成
//   ③ cache 状态单元: 4 行直接映射 {valid,tag,state,data}, 4 态 I/SC/UC/UD
//   ④ snoop 响应器: AC→查③→CRRESP 决策表→CR; UD 行经 CD 交数据; 更新③
//   ⑤ PRBS        : ace_pkg::prbs128, 按地址种子, 两端同公式
//
// 关键约定:
//   - 串行事务: 读/写单笔在途; snoop 在主事务在途时于入口推迟 (acready 门控)
//   - 读填充按 RRESP 落状态: RU+PassDirty→UD / RS+IsShared→SC / 其余→UC
//   - WriteLineUnique 直写式: 数据照进内存, 行保留 UC + 刷新快照
//   - UD 行被质询: 统一应答 DT|PassDirty|WasUnique 并经 CD 交整行, 行→I
//   - RRESP 合法性: 低 2 位 OKAY; PassDirty 仅 RU; IsShared 仅 RS
//   - main traffic rotates Single Write / Single Read / configurable Burst Write /
//     Burst Read; one beat is one 16B cache line. CD remains single-beat.
//   - 配置、错误状态和计数器均映射为 APB 寄存器；外部订单入口保持独立
// =====================================================================
`timescale 1ns / 1ps
`default_nettype none

import ace_pkg::*;

module module_a (
  // ---------------- 时钟复位 ----------------
  input  wire                  aclk,
  input  wire                  areset_n,

  // ---------------- AW 通道 (出) ----------------
  output logic                 awvalid,
  input  wire                  awready,
  output logic [ID_W-1:0]      awid,
  output logic [ADDR_W-1:0]    awaddr,
  output logic [LEN_W-1:0]     awlen,
  output logic [2:0]           awsize,
  output logic [1:0]           awburst,
  output logic [3:0]           awregion,
  output logic                 awlock,
  output logic [3:0]           awcache,
  output logic [2:0]           awprot,
  output logic [3:0]           awqos,
  output logic [2:0]           awsnoop,
  output logic [1:0]           awdomain,
  output logic [1:0]           awbar,
  output logic                 awunique,

  // ---------------- W 通道 (出) ----------------
  output logic                 wvalid,
  input  wire                  wready,
  output logic [DATA_W-1:0]    wdata,
  output logic [STRB_W-1:0]    wstrb,
  output logic                 wlast,

  // ---------------- B 通道 (入) ----------------
  input  wire                  bvalid,
  output logic                 bready,
  input  wire [ID_W-1:0]       bid,
  input  wire [1:0]            bresp,

  // ---------------- AR 通道 (出) ----------------
  output logic                 arvalid,
  input  wire                  arready,
  output logic [ID_W-1:0]      arid,
  output logic [ADDR_W-1:0]    araddr,
  output logic [LEN_W-1:0]     arlen,
  output logic [2:0]           arsize,
  output logic [1:0]           arburst,
  output logic [3:0]           arregion,
  output logic                 arlock,
  output logic [3:0]           arcache,
  output logic [2:0]           arprot,
  output logic [3:0]           arqos,
  output logic [3:0]           arsnoop,
  output logic [1:0]           ardomain,
  output logic [1:0]           arbar,

  // ---------------- R 通道 (入) ----------------
  input  wire                  rvalid,
  output logic                 rready,
  input  wire [ID_W-1:0]       rid,
  input  wire [DATA_W-1:0]     rdata,
  input  wire [RRESP_W-1:0]    rresp,
  input  wire                  rlast,

  // ---------------- AC 通道 (入, 被质询) ----------------
  input  wire                  acvalid,
  output logic                 acready,
  input  wire [ACVID_W-1:0]    acvid,
  input  wire [ADDR_W-1:0]     acaddr,
  input  wire [3:0]            acsnoop,
  input  wire [2:0]            acprot,

  // ---------------- CR 通道 (出, 应答) ----------------
  output logic                 crvalid,
  input  wire                  crready,
  output logic [CRRESP_W-1:0]  crresp,

  // ---------------- CD 通道 (出, UD 行交数据) ----------------
  output logic                 cdvalid,
  input  wire                  cdready,
  output logic [DATA_W-1:0]    cddata,
  output logic                 cdlast,

  // ---------------- 事务确认 (出) ----------------
  output logic                 rack,
  output logic                 wack,

  // ---------------- APB3 configuration/status slave ----------------
  // PCLK must be synchronous to ACLK in this implementation.
  input  wire                  pclk,
  input  wire                  presetn,
  input  wire                  psel,
  input  wire                  penable,
  input  wire                  pwrite,
  input  wire [11:0]           paddr,
  input  wire [31:0]           pwdata,
  output logic [31:0]          prdata,
  output logic                 pready,
  output logic                 pslverr,

  // ---------------- 外部订单入口 (UVM/tb 驱动; cfg_ord_ext=1 时生效) ----------------
  input  wire                  ord_valid,       // 外部订单有效
  output logic                 ord_ready,       // 引擎空闲可接单
  input  wire                  ord_write,       // 1=写 0=读
  input  wire [3:0]            ord_arsnoop,     // 读属性 (读订单有效)
  input  wire [2:0]            ord_awsnoop,     // 写属性 (写订单有效)
  input  wire                  ord_awunique,    // 写独占标记
  input  wire [ADDR_W-1:0]     ord_addr,        // 目标地址 (行对齐)
  input  wire                  cfg_ord_ext      // 订单来源: 1=外部 0=内部计数器
);

  localparam int IDX_W = $clog2(N_LINES);
  localparam int ACE_TIMEOUT = 256;
  // APB register map (byte offsets):
  // 000 CONTROL   RW: [0] enable, [1] error-clear pulse
  // 004 DATA_CFG RW: [7:0] PRBS seed code, [10:8] data mode, [23:16] xcode,
  //                  [27:24] test type: 0=all, 1=single write,
  //                  2=single read, 3=burst write, 4=burst read
  // 008 BASE_LO  RW: base address [31:0]
  // 00C BASE_HI  RW: base address [43:32]
  // 010 STATUS   RO: rd/rsp/wr-prbs/main-timeout/snoop-timeout/any-error
  // 014 CNT_TX   RO, 018 CNT_SNOOP RO, 01C WAIT_COUNT RO
  // 020 BURST_CFG RW: [7:0] AXI burst LEN (beats minus one), reset 3 = 4 beats
  localparam logic [11:0] A_CONTROL    = 12'h000;
  localparam logic [11:0] A_DATA_CFG   = 12'h004;
  localparam logic [11:0] A_BASE_LO    = 12'h008;
  localparam logic [11:0] A_BASE_HI    = 12'h00c;
  localparam logic [11:0] A_STATUS     = 12'h010;
  localparam logic [11:0] A_CNT_TX     = 12'h014;
  localparam logic [11:0] A_CNT_SNOOP  = 12'h018;
  localparam logic [11:0] A_WAIT_COUNT = 12'h01c;
  localparam logic [11:0] A_BURST_CFG  = 12'h020;

  logic                  cfg_en, cfg_err_clr;
  logic [3:0]            cfg_scenario;
  logic [7:0]            cfg_prbs_code, cfg_xcode;
  logic [2:0]            cfg_data_mode;
  logic [LEN_W-1:0]      cfg_burst_len;
  logic [ADDR_W-1:0]     cfg_base_addr;
  logic                  err_rd_data, err_rsp, err_wr_prbs;
  logic                  err_main_timeout, err_snoop_timeout, o_any_err;
  logic [15:0]           o_main_wait_cnt, o_snoop_wait_cnt;
  logic [31:0]           o_cnt_tx, o_cnt_snoop;

  wire apb_access = psel && penable;
  wire apb_write  = apb_access && pwrite;

  always_ff @(posedge pclk or negedge presetn) begin
    if (!presetn) begin
      cfg_en        <= 1'b0;
      cfg_err_clr   <= 1'b0;
      cfg_scenario  <= '0;
      cfg_prbs_code <= 8'hA5;
      cfg_data_mode <= 3'd0;
      cfg_burst_len <= {{(LEN_W-2){1'b0}}, 2'b11}; // AXI LEN=3: four beats
      cfg_xcode     <= 8'h5A;
      cfg_base_addr <= 44'h2000_0000;
    end else begin
      cfg_err_clr <= 1'b0;
      if (apb_write) begin
        case (paddr)
          A_CONTROL: begin
            cfg_en      <= pwdata[0];
            cfg_err_clr <= pwdata[1];
          end
          A_DATA_CFG: begin
            cfg_prbs_code <= pwdata[7:0];
            cfg_data_mode <= pwdata[10:8];
            cfg_xcode     <= pwdata[23:16];
            cfg_scenario  <= pwdata[27:24];
          end
          A_BASE_LO: cfg_base_addr[31:0]  <= pwdata;
          A_BASE_HI: cfg_base_addr[43:32] <= pwdata[11:0];
          A_BURST_CFG: cfg_burst_len <= pwdata[LEN_W-1:0];
          default: begin end
        endcase
      end
    end
  end

  always_comb begin
    pready  = 1'b1;
    pslverr = 1'b0;
    prdata  = '0;
    if (psel) begin
      case (paddr)
        A_CONTROL:    prdata = {31'b0, cfg_en};
        A_DATA_CFG:   prdata = {4'b0, cfg_scenario, cfg_xcode, 5'b0,
                                cfg_data_mode, cfg_prbs_code};
        A_BASE_LO:    prdata = cfg_base_addr[31:0];
        A_BASE_HI:    prdata = {20'b0, cfg_base_addr[43:32]};
        A_STATUS:     prdata = {26'b0, o_any_err, err_snoop_timeout,
                                err_main_timeout, err_wr_prbs,
                                err_rsp, err_rd_data};
        A_CNT_TX:     prdata = o_cnt_tx;
        A_CNT_SNOOP:  prdata = o_cnt_snoop;
        A_WAIT_COUNT: prdata = {o_snoop_wait_cnt, o_main_wait_cnt};
        A_BURST_CFG:  prdata = {{(32-LEN_W){1'b0}}, cfg_burst_len};
        default: begin
          prdata  = '0;
          pslverr = apb_access;
        end
      endcase
    end
  end

  // =====================================================================
  // ⑤ PRBS 单元 (纯函数, 两端同公式; 函数体见 ace_funcs.svh)
  // =====================================================================
  `include "ace_funcs.svh"

  // ---- 主 FSM 类型与常量 (声明前置: cache 段的快照写入/锁存块需引用 st/M_*_ar_id_c) ----
  typedef enum logic [2:0] {
    M_IDLE, M_W_AW, M_W_W, M_W_B, M_R_AR, M_R_R
  } main_e;
  main_e st;

  logic [ID_W-1:0]  aw_id_c = 'd1;                 // 写事务 ID
  logic [ID_W-1:0]  ar_id_c = 'd2;                 // 读事务 ID

  // =====================================================================
  // ① 场景发生器: 计数器组 (内部订单源; 外部订单源见端口 ord_*)
  // =====================================================================
  logic        wr_sel;                    // legacy/debug mirror of next operation
  logic [1:0]  op_sel;                    // rotating operation: 0 SW, 1 SR, 2 BW, 3 BR
  logic [1:0]  selected_op;               // APB-selected operation for the internal source
  logic [1:0]  line_idx;                  // 行号 (窗口内 4 行循环)
  logic [1:0]  pat;                       // 读属性轮转: RS/RU/RS/RO (随读推进)
  logic        wr_pat;                    // 写属性轮转: WU/WLU 交替 (随写推进)
  logic        re_rd;                     // 补读: 主读完成后同行再发一笔 RS

  logic [TAG_W-1:0] base_line;
  assign base_line = to_line(cfg_base_addr);
  logic [TAG_W-1:0] cur_line;
  assign cur_line = base_line + {{(TAG_W-2){1'b0}}, line_idx};
  // 补读目标行 = 刚读完的那一行 (主读接受时 line_idx 已推进, 故取 line_idx-1;
  // 2 位行号模 4 回绕). 补读时该行必已在 B 目录登记 → 命中 IsShared (闭环二)
  logic [TAG_W-1:0] re_line;
  assign re_line = base_line + {{(TAG_W-2){1'b0}}, (line_idx - 2'd1)};

  // ---- 已接受订单的工作寄存器 (VCS 要求: 先声明后使用) ----
  logic             ord_is_write_l;
  logic [TAG_W-1:0] ord_line_l;
  logic [3:0]       ord_arsn_l;
  logic [2:0]       ord_awsn_l;
  logic             ord_unq_l;
  logic [LEN_W-1:0] ord_len_l;
  logic [7:0]       main_beat_cnt;

  // ---- 订单来源选择 (外部 / 内部) ----
  logic              src_write;
  logic [TAG_W-1:0]  src_line;
  logic [3:0]        src_arsn;
  logic [2:0]        src_awsn;
  logic              src_unq;
  logic [LEN_W-1:0]  src_len;

  always_comb begin
    // TEST_TYPE only selects the internal generator. With cfg_ord_ext=1,
    // ord_* remains the authoritative UVM/tb order source.
    case (cfg_scenario)
      4'd1: selected_op = 2'd0; // Single Write
      4'd2: selected_op = 2'd1; // Single Read
      4'd3: selected_op = 2'd2; // Burst Write
      4'd4: selected_op = 2'd3; // Burst Read
      default: selected_op = op_sel; // 0 and reserved values: rotate all four
    endcase
    // 补读: 同一行紧接再发一笔 ReadShared —— 主读的 rack 已在目录登记,
    // 此笔必命中 "目录已有该行" → B 置 RRESP.IsShared → A 行落 SC (闭环二)
    src_write = cfg_ord_ext ? ord_write : (re_rd ? 1'b0 : ~selected_op[0]);
    src_line  = cfg_ord_ext ? to_line(ord_addr) : (re_rd ? re_line : cur_line);
    src_len   = cfg_ord_ext ? '0
              : re_rd      ? '0
              : selected_op[1] ? cfg_burst_len : '0;
    src_arsn  = cfg_ord_ext ? ord_arsnoop
              : re_rd         ? ARSNOOP_READ_SHARED
              : selected_op[1] ? ARSNOOP_READ_ONCE
              : (pat == 2'd1) ? ARSNOOP_READ_UNIQUE
              : (pat == 2'd3) ? ARSNOOP_READ_ONCE
              :                 ARSNOOP_READ_SHARED;
    src_awsn  = cfg_ord_ext ? ord_awsnoop
              : selected_op[1] ? AWSNOOP_WRITE_UNIQUE
              : (wr_pat ? AWSNOOP_WRITE_LINE_UNIQUE : AWSNOOP_WRITE_UNIQUE);
    src_unq   = cfg_ord_ext ? ord_awunique : 1'b1;
  end

  // =====================================================================
  // ③ cache 状态单元: 4 行直接映射 {valid, tag, state, data}
  // =====================================================================
  logic             c_valid [N_LINES];
  logic [TAG_W-1:0] c_tag   [N_LINES];
  logic [1:0]       c_state [N_LINES];
  logic [DATA_W-1:0] c_data [N_LINES];   // 数据快照 (CD 交数据 / 行保留)
  // 注: 直接映射 (槽位=行号低 2 位), 与 B 目录同构 —— 4 行窗口下一一对应,
  //     不存在替换逐出, 消除 A/B 状态失步 (全相联+替换指针在静默逐出时会失配)

  // ---- 查表地址 (两路独立: 主事务 / snoop) ----
  logic [TAG_W-1:0] main_lk_addr;
  logic [TAG_W-1:0] sn_lk_addr;

  // ---- 查表结果 (组合) ----
  logic                   main_lk_hit;
  logic [IDX_W-1:0]       main_lk_idx;
  logic                   sn_lk_hit;
  logic [IDX_W-1:0]       sn_lk_idx;
  logic [1:0]             sn_lk_state;

  always_comb begin
    main_lk_hit = 1'b0; main_lk_idx = 2'd0;
    if (c_valid[0] && c_tag[0] == main_lk_addr) begin
      main_lk_hit = 1'b1; main_lk_idx = 2'd0;
    end else if (c_valid[1] && c_tag[1] == main_lk_addr) begin
      main_lk_hit = 1'b1; main_lk_idx = 2'd1;
    end else if (c_valid[2] && c_tag[2] == main_lk_addr) begin
      main_lk_hit = 1'b1; main_lk_idx = 2'd2;
    end else if (c_valid[3] && c_tag[3] == main_lk_addr) begin
      main_lk_hit = 1'b1; main_lk_idx = 2'd3;
    end
    sn_lk_hit = 1'b0; sn_lk_idx = 2'd0; sn_lk_state = ST_I;
    if (c_valid[0] && c_tag[0] == sn_lk_addr) begin
      sn_lk_hit = 1'b1; sn_lk_idx = 2'd0; sn_lk_state = c_state[0];
    end else if (c_valid[1] && c_tag[1] == sn_lk_addr) begin
      sn_lk_hit = 1'b1; sn_lk_idx = 2'd1; sn_lk_state = c_state[1];
    end else if (c_valid[2] && c_tag[2] == sn_lk_addr) begin
      sn_lk_hit = 1'b1; sn_lk_idx = 2'd2; sn_lk_state = c_state[2];
    end else if (c_valid[3] && c_tag[3] == sn_lk_addr) begin
      sn_lk_hit = 1'b1; sn_lk_idx = 2'd3; sn_lk_state = c_state[3];
    end
  end

  // ---- 主事务对 cache 的更新 ----
  //  写 (WriteUnique) 完成行作废;  读完成按属性分配/更新
  logic [3:0]       arsnoop_l;                 // 已发出读的属性锁存 (提前声明供③使用)
  logic [TAG_W-1:0] ar_line_l;                 // 已发出读的行地址
  logic             main_alloc;                // 读完成触发分配 (ReadShared/ReadUnique)
  assign main_alloc = rack && (arsnoop_l == ARSNOOP_READ_SHARED ||
                               arsnoop_l == ARSNOOP_READ_UNIQUE);
  logic                       main_upd_en;
  logic                       main_upd_vld;
  logic [1:0]                 main_upd_st;
  logic [TAG_W-1:0]           main_upd_tag;
  logic [IDX_W-1:0]           main_upd_idx;
  logic                       r_pd_l, r_is_l;   // 读最后拍锁存的 RRESP 属性位

  // 槽位 = 行号低 2 位 (连续赋值计算, 规避 always 块内位选择的工具限制)
  logic [IDX_W-1:0] ar_slot;
  logic [IDX_W-1:0] sn_slot;
  assign ar_slot = ar_line_l[IDX_W-1:0];
  assign sn_slot = sn_lk_addr[IDX_W-1:0];

  always_comb begin
    main_lk_addr = main_alloc ? ar_line_l : ord_line_l;
    // 直接映射: 槽位 = 行号低 2 位 (与 B 目录同构, 无逐出)
    main_upd_idx = main_alloc ? ar_slot : ord_line_l[IDX_W-1:0];
    main_upd_en  = main_alloc || wack;               // 读: 分配; 写: 作废或保留
    main_upd_vld = main_alloc || (wack && ord_awsn_l == AWSNOOP_WRITE_LINE_UNIQUE);
    // 读填充: RU 按 PassDirty 落 UD / RS 按 IsShared 落 SC / 其余 UC;
    // 写: WLU 完成→UC (直写式, 数据已照进内存); WU 完成→作废 (vld=0)
    main_upd_st  = main_alloc ? ((arsnoop_l == ARSNOOP_READ_UNIQUE)
                                ? (r_pd_l ? ST_UD : ST_UC)
                                : (r_is_l ? ST_SC : ST_UC))
                              : ST_UC;
    main_upd_tag = main_alloc ? ar_line_l : ord_line_l;
  end

  // ---- 读最后拍锁存 RRESP 属性位 (v2 的 rack 延迟一拍, rack 拍不能再采 rresp) ----
  always_ff @(posedge aclk or negedge areset_n) begin
    if (!areset_n) begin
      r_pd_l <= 1'b0;
      r_is_l <= 1'b0;
    end else if (rvalid && rready && (st == M_R_R) && (rid == ar_id_c)) begin
      r_pd_l <= rresp[RR_PASSDIRTY];
      r_is_l <= rresp[RR_ISSHARED];
    end
  end

  // ---- snoop 对 cache 的更新 (优先于主事务; 场景约定不同拍, 此处仅防 X) ----
  // 决策在 AC 握手时刻锁存, CR 阶段使用锁存值 (acaddr 事后可能变化)
  logic                       sn_upd_en;
  logic                       sn_upd_vld;
  logic [1:0]                 sn_upd_st;
  logic [CRRESP_W-1:0]        sn_resp_l;
  logic                       sn_upd_en_l;
  logic                       sn_upd_vld_l;
  logic [1:0]                 sn_upd_st_l;
  logic [IDX_W-1:0]           sn_idx_l;
  logic [TAG_W-1:0]           sn_tag_l;
  logic                       sn_upd_fire;   // 单拍脉冲: CR 应答接受时刻

  always_ff @(posedge aclk or negedge areset_n) begin
    if (!areset_n) begin
      for (int i = 0; i < N_LINES; i++) begin
        c_valid[i] <= 1'b0;
        c_tag[i]   <= '0;
        c_state[i] <= ST_I;
        c_data[i]  <= '0;
      end
    end else begin
      // 快照写入 (独立于状态更新, 目标数组不同):
      //   写 W 拍 ← wdata (WLU 完成: 行保留 UC + 快照刷新)
      //   读最后拍 ← rdata (RS/RU 填充: 行落 UD/SC/UC + 快照)
      if ((st == M_W_W) && wvalid && wready)
        c_data[ord_line_l[IDX_W-1:0]] <= wdata;
      if (rvalid && rready && (st == M_R_R) && (rid == ar_id_c))
        c_data[ar_slot] <= rdata;
      if (sn_upd_fire) begin
        c_valid[sn_idx_l] <= sn_upd_vld_l;
        c_tag[sn_idx_l]   <= sn_tag_l;
        c_state[sn_idx_l] <= sn_upd_st_l;
      end
      // 注: sn_upd_fire 为单拍脉冲, 不与主事务更新长期抢占
      else if (main_upd_en) begin
        c_valid[main_upd_idx] <= main_upd_vld;
        c_tag[main_upd_idx]   <= main_upd_tag;
        c_state[main_upd_idx] <= main_upd_st;
      end
    end
  end

  // =====================================================================
  // ② 数据面引擎: 主 FSM (类型/ID 常量声明已前置)
  // =====================================================================

  // 外部订单握手: 引擎空闲即可接单
  // Do not accept a main transaction while an AC/CR snoop is in progress.
  // This prevents a response to the same cache line before CR completion.
  // CD 挂起期间同样不接单: 新写单可能改写待交数据所在槽位的快照.
  assign ord_ready = (st == M_IDLE) && cfg_en && !rack && !wack &&
                     !acvalid && !crvalid && !cdvalid;

  // ---- AW 通道 ----
  assign awid     = aw_id_c;
  assign awaddr   = {ord_line_l, {LINE_SHIFT{1'b0}}};
  assign awlen    = ord_len_l;
  assign awsize   = 3'b100;                        // 16B/拍
  assign awburst  = 2'b01;                         // INCR
  assign awregion = '0;
  assign awlock   = 1'b0;
  assign awcache  = 4'hF;
  assign awprot   = '0;
  assign awqos    = '0;
  assign awdomain = 2'b01;                         // Inner Shareable
  assign awbar    = '0;
  assign awsnoop  = ord_awsn_l;
  assign awunique = ord_unq_l;
  assign awvalid  = (st == M_W_AW);

  // ---- W 通道 ----
  assign wdata  = beat_data(ord_line_l + {{(TAG_W-8){1'b0}}, main_beat_cnt},
                            main_beat_cnt);
  assign wstrb  = {STRB_W{1'b1}};
  assign wlast  = (main_beat_cnt == ord_len_l);
  assign wvalid = (st == M_W_W);

  // 写数据自检: 占位 (独立实现比对留待后续版本; 当前恒 0)
  assign err_wr_prbs = 1'b0;

  // ---- B 通道 ----
  assign bready = (st == M_W_B);

  // ---- AR 通道 ----
  assign arid     = ar_id_c;
  assign araddr   = {ord_line_l, {LINE_SHIFT{1'b0}}};
  assign arlen    = ord_len_l;
  assign arsize   = 3'b100;
  assign arburst  = 2'b01;
  assign arregion = '0;
  assign arlock   = 1'b0;
  assign arcache  = 4'hF;
  assign arprot   = '0;
  assign arqos    = '0;
  assign ardomain = 2'b01;
  assign arbar    = '0;
  assign arsnoop  = ord_arsn_l;
  assign arvalid  = (st == M_R_AR);

  // ---- R 通道 ----
  logic [DATA_W-1:0] rdata_exp;
  assign rdata_exp = beat_data(ar_line_l + {{(TAG_W-8){1'b0}}, main_beat_cnt},
                               main_beat_cnt);
  // (rdata_exp 依赖 ord_line_l 锁存的行 —— M_R_AR 时已拷贝到 ar_line_l)

  assign rready = (st == M_R_R);

  // Emit ACE response acknowledgements one cycle after the response
  // handshake, after a protocol monitor has retired the B/R transaction.
  logic rack_q, wack_q;
  assign rack = rack_q;
  assign wack = wack_q;
  always_ff @(posedge aclk or negedge areset_n) begin
    if (!areset_n) begin
      rack_q <= 1'b0;
      wack_q <= 1'b0;
    end else begin
      rack_q <= (st == M_R_R) && rvalid && rready && rlast && (rid == ar_id_c);
      wack_q <= (st == M_W_B) && bvalid && bready && (bid == aw_id_c);
    end
  end

  // ---- 主 FSM ----
  always_ff @(posedge aclk or negedge areset_n) begin
    if (!areset_n) begin
      st             <= M_IDLE;
      wr_sel         <= 1'b1;
      op_sel         <= 2'd0;
      line_idx       <= '0;
      pat            <= '0;
      wr_pat         <= 1'b0;
      re_rd          <= 1'b0;
      ord_is_write_l <= 1'b1;
      ord_line_l     <= '0;
      ord_arsn_l     <= ARSNOOP_READ_SHARED;
      ord_awsn_l     <= AWSNOOP_WRITE_UNIQUE;
      ord_unq_l      <= 1'b0;
      ord_len_l      <= '0;
      main_beat_cnt  <= '0;
    end else begin
      case (st)
        // 接受一笔订单 (内部计数器或外部端口), 锁存为工作寄存器
        M_IDLE: if (cfg_en && !rack && !wack && !acvalid && !crvalid &&
                   !cdvalid && (!cfg_ord_ext || ord_valid)) begin
                  st             <= src_write ? M_W_AW : M_R_AR;
                  ord_is_write_l <= src_write;
                  ord_line_l     <= src_line;
                  ord_arsn_l     <= src_arsn;
                  ord_awsn_l     <= src_awsn;
                  ord_unq_l      <= src_unq;
                  ord_len_l      <= src_len;
                  main_beat_cnt  <= '0;
                  if (!cfg_ord_ext) begin           // 内部源: 推进计数器
                    if (re_rd) begin
                      re_rd <= 1'b0;                // 补读完成: 恢复正常轮转
                    end else begin
                      if (cfg_scenario == 4'd0 || cfg_scenario > 4'd4)
                        op_sel <= op_sel + 1'b1;
                      wr_sel <= selected_op[0];
                      if (!src_write) begin         // 主读接受: 推进行号/属性
                        line_idx <= line_idx + 1'b1;
                        // Burst Read is a transport/data test using ReadOnce;
                        // only Single Read advances the coherency pattern.
                        if (src_len == 0)
                          pat <= pat + 1'b1;        // RS/RU/RS/RO rotation
                        // Only a single ReadShared schedules the same-line
                        // ReadShared reread used to cover RRESP.IsShared.
                        if ((src_len == 0) &&
                            (src_arsn == ARSNOOP_READ_SHARED))
                          re_rd <= 1'b1;
                      end
                      if (src_write) wr_pat <= ~wr_pat;  // 写: WU/WLU 交替
                    end
                  end
                end
        M_W_AW: if (awvalid && awready) begin
                  main_beat_cnt <= '0;
                  st <= M_W_W;
                end
        M_W_W:  if (wvalid && wready) begin
                  if (wlast) st <= M_W_B;
                  else       main_beat_cnt <= main_beat_cnt + 1'b1;
                end
        M_W_B:  if (bvalid && bready)   st <= M_IDLE;  // 回空闲: 给 snoop 握手窗口
        M_R_AR: if (arvalid && arready) begin
                  st        <= M_R_R;
                  arsnoop_l <= ord_arsn_l;
                  ar_line_l <= ord_line_l;
                  main_beat_cnt <= '0;
                end
        M_R_R:  if (rvalid && rready && (rid == ar_id_c)) begin
                  if (rlast) st <= M_IDLE; // response完成；RACK下一拍发出
                  else       main_beat_cnt <= main_beat_cnt + 1'b1;
                end
        default: st <= M_IDLE;
      endcase
    end
  end

  // ---- 在途标记: 主事务活动期间 snoop 于入口推迟 (D10 连带调整) ----
  logic main_busy;
  assign main_busy = (st != M_IDLE);

  // =====================================================================
  // ④ snoop 响应器: AC → 查③ → CRRESP 决策表 → CR → 更新③
  // =====================================================================
  typedef enum logic [1:0] {S_IDLE, S_CR, S_CD} sn_e;
  sn_e sn;

  logic [CRRESP_W-1:0] sn_resp;

  assign sn_lk_addr = to_line(acaddr);
  assign acready    = areset_n && (sn == S_IDLE) && !main_busy;  // 复位期间保持低

  // CRRESP 决策表 (4 态 × 5 质询)
  // 注意: 用当前输入 acsnoop 计算 (握手时锁存计算结果)
  always_comb begin
    case (sn_lk_state)
      ST_I:  sn_resp = 5'b00000;
      ST_SC: begin
        if (acsnoop == ARSNOOP_READ_SHARED || acsnoop == ARSNOOP_READ_ONCE)
          sn_resp = 5'b1 << CR_ISSHARED;               // IsShared, 留副本
        else
          sn_resp = 5'b00000;                          // 行→I
      end
      ST_UC: begin
        if (acsnoop == ARSNOOP_READ_SHARED)
          sn_resp = (5'b1 << CR_WASUNIQUE) | (5'b1 << CR_ISSHARED); // 行→SC
        else if (acsnoop == ARSNOOP_READ_ONCE || acsnoop == ARSNOOP_READ_UNIQUE)
          sn_resp = 5'b1 << CR_WASUNIQUE;              // 行→I
        else
          sn_resp = 5'b00000;                          // CleanInvalid/MakeInvalid, 行→I
      end
      ST_UD: begin
        // 脏行统一规则 (五类质询一致): 交数据 + 移交脏责任 + 如实报 WasUnique, 行→I
        sn_resp = (5'b1 << CR_DT) | (5'b1 << CR_PASSDIRTY) | (5'b1 << CR_WASUNIQUE);
      end
      default: sn_resp = 5'b00000;
    endcase
  end

  // 决策表对应的行状态更新
  always_comb begin
    sn_upd_en  = 1'b0;
    sn_upd_vld = 1'b1;
    sn_upd_st  = ST_I;
    case (sn_lk_state)
      ST_SC: begin
        sn_upd_en = 1'b1;
        if (acsnoop == ARSNOOP_READ_SHARED || acsnoop == ARSNOOP_READ_ONCE) begin
          sn_upd_vld = 1'b1; sn_upd_st = ST_SC;        // 留副本
        end else begin
          sn_upd_vld = 1'b0; sn_upd_st = ST_I;         // 作废
        end
      end
      ST_UC: begin
        sn_upd_en = 1'b1;
        if (acsnoop == ARSNOOP_READ_SHARED) begin
          sn_upd_vld = 1'b1; sn_upd_st = ST_SC;        // 降级
        end else begin
          sn_upd_vld = 1'b0; sn_upd_st = ST_I;         // 作废
        end
      end
      ST_UD: begin
        sn_upd_en   = 1'b1;                            // 交数据后作废
        sn_upd_vld  = 1'b0;
        sn_upd_st   = ST_I;
      end
      default: sn_upd_en = 1'b0;                        // I: 无变化
    endcase
  end

  assign crvalid = (sn == S_CR);
  assign crresp  = sn_resp_l;

  always_ff @(posedge aclk or negedge areset_n) begin
    if (!areset_n) begin
      sn          <= S_IDLE;
      sn_upd_fire <= 1'b0;
      sn_resp_l   <= '0;
      sn_upd_en_l <= 1'b0;
      sn_upd_vld_l<= 1'b0;
      sn_upd_st_l <= ST_I;
      sn_idx_l    <= '0;
      sn_tag_l    <= '0;
    end else begin
      sn_upd_fire <= 1'b0;                       // 单拍脉冲默认撤消
      case (sn)
        S_IDLE: if (acvalid && acready) begin
                  sn_resp_l     <= sn_resp;
                  sn_upd_en_l   <= sn_upd_en;
                  sn_upd_vld_l  <= sn_upd_vld;
                  sn_upd_st_l   <= sn_upd_st;
                  sn_idx_l      <= sn_slot;
                  sn_tag_l      <= sn_lk_addr;
                  sn            <= S_CR;
                end
        S_CR:   if (crvalid && crready) begin
                  sn_upd_fire <= 1'b1;           // 触发一拍 cache 更新 (UD 行此时作废)
                  sn          <= sn_resp_l[CR_DT] ? S_CD : S_IDLE;  // DT: 先交数据
                end
        S_CD:   if (cdvalid && cdready)          // CD 单拍交整行 (16B)
                  sn          <= S_IDLE;
        default: sn <= S_IDLE;
      endcase
    end
  end

  // =====================================================================
  // CD 端口: UD 行被质询交数据 (单拍 = 整行 16B, 数据取自快照)
  // =====================================================================
  assign cdvalid = (sn == S_CD);
  assign cddata  = c_data[sn_idx_l];
  assign cdlast  = 1'b1;

  // =====================================================================
  // 校验 / 计数 / 状态输出
  // =====================================================================
  logic err_rd_data_q, err_rsp_q;
  logic err_main_timeout_q, err_snoop_timeout_q;
  logic main_progress, snoop_progress;

  assign main_progress = (awvalid && awready) || (wvalid && wready) ||
                         (bvalid && bready) || (arvalid && arready) ||
                         (rvalid && rready);
  assign snoop_progress = (acvalid && acready) || (crvalid && crready) ||
                          (cdvalid && cdready);

  always_ff @(posedge aclk or negedge areset_n) begin
    if (!areset_n || cfg_err_clr) begin
      o_main_wait_cnt    <= '0;
      o_snoop_wait_cnt   <= '0;
      err_main_timeout_q <= 1'b0;
      err_snoop_timeout_q<= 1'b0;
    end else begin
      if ((st == M_IDLE) || main_progress)
        o_main_wait_cnt <= '0;
      else if (o_main_wait_cnt < ACE_TIMEOUT)
        o_main_wait_cnt <= o_main_wait_cnt + 1'b1;
      if ((st != M_IDLE) && !main_progress &&
          (o_main_wait_cnt == ACE_TIMEOUT-1))
        err_main_timeout_q <= 1'b1;

      if ((sn == S_IDLE) || snoop_progress)
        o_snoop_wait_cnt <= '0;
      else if (o_snoop_wait_cnt < ACE_TIMEOUT)
        o_snoop_wait_cnt <= o_snoop_wait_cnt + 1'b1;
      if ((sn != S_IDLE) && !snoop_progress &&
          (o_snoop_wait_cnt == ACE_TIMEOUT-1))
        err_snoop_timeout_q <= 1'b1;
    end
  end

  always_ff @(posedge aclk or negedge areset_n) begin
    if (!areset_n || cfg_err_clr) begin
      err_rd_data_q <= 1'b0;
      err_rsp_q     <= 1'b0;
    end else begin
      // 读数据逐拍互核
      if (rvalid && rready && (st == M_R_R) && (rid == ar_id_c) &&
          (rdata != rdata_exp))
        err_rd_data_q <= 1'b1;
      // 响应码: BRESP 须 OKAY
      if ((st == M_W_B) && bvalid && (bid == aw_id_c) && (bresp != 2'b00))
        err_rsp_q <= 1'b1;
      // RRESP 合法性: 低 2 位须 OKAY; PassDirty 仅 RU 合法; IsShared 仅 RS 合法
      if (rvalid && rready && (st == M_R_R) && (rid == ar_id_c)) begin
        if (rresp[1:0] != 2'b00)
          err_rsp_q <= 1'b1;
        if (rresp[RR_PASSDIRTY] && arsnoop_l != ARSNOOP_READ_UNIQUE)
          err_rsp_q <= 1'b1;
        if (rresp[RR_ISSHARED] && arsnoop_l != ARSNOOP_READ_SHARED)
          err_rsp_q <= 1'b1;
      end
      // acvid 消费: AC 握手时必须为确定值 (厂商扩展虚拟 ID 不得为 X)
      if (acvalid && acready && (^acvid === 1'bx))
        err_rsp_q <= 1'b1;
    end
  end

  assign err_rd_data = err_rd_data_q;
  assign err_rsp     = err_rsp_q;
  assign err_main_timeout  = err_main_timeout_q;
  assign err_snoop_timeout = err_snoop_timeout_q;
  assign o_any_err   = err_rd_data_q | err_rsp_q | err_wr_prbs |
                       err_main_timeout_q | err_snoop_timeout_q;

  always_ff @(posedge aclk or negedge areset_n) begin
    if (!areset_n)                o_cnt_tx <= '0;
    else if (cfg_err_clr)         o_cnt_tx <= '0;
    else if (wack || rack)        o_cnt_tx <= o_cnt_tx + 1'b1;
  end

  always_ff @(posedge aclk or negedge areset_n) begin
    if (!areset_n)                o_cnt_snoop <= '0;
    else if (cfg_err_clr)         o_cnt_snoop <= '0;
    else if (crvalid && crready)  o_cnt_snoop <= o_cnt_snoop + 1'b1;
  end

  // 未使用输入 (预留): acprot 旁路不校验 (acvid 已做 X 合法性检查, cdready 已消费)
  wire unused = |{acprot, cfg_scenario};

endmodule

`default_nettype wire
