// =====================================================================
// ace_coverage.sv - 功能覆盖率
//   · 订单覆盖: 读写 × 读属性 × 写属性 × 数据码型 × 目标行
//   · 质询覆盖: 质询类型 × CRRESP 应答值 (决策表格子覆盖)
//   · 状态覆盖: 四个 FSM 的全部状态 (P3-1 补全, 每 clk 采样)
//   · 标签覆盖: RRESP 高 2 位 (IsShared/PassDirty, P2 新增语义)
// =====================================================================
class ace_coverage extends uvm_subscriber #(ace_snoop_item);

  `uvm_component_utils(ace_coverage)

  uvm_analysis_imp_ord #(ace_order_item, ace_coverage) ord_imp;

  virtual ace_if vif;

  ace_order_item ord_last;
  int n_ord;

  // ---- bin 命中位图 (get_coverage 只有 coverpoint 粒度, 精确到 bin 靠自记) ----
  bit [3:0] seen_dmode;   // 码型 0..3
  bit [3:0] seen_aline;   // 目标行 0..3
  bit [5:0] seen_st_a;    // A 主 FSM 态 0..5
  bit [2:0] seen_sn_a;    // A snoop 态 0..2
  bit [3:0] seen_st_b;    // B slave 态 0..3
  bit [4:0] seen_hs_b;    // B home 态 0..4

  // ---- 订单覆盖 (参数化采样, 与 cg_snoop 同款写法) ----
  covergroup cg_ord with function sample(bit w, bit [3:0] arsn, bit [2:0] awsn,
                                         bit [1:0] dmode, bit [1:0] aline);
    cp_write:  coverpoint w { bins wr = {1}; bins rd = {0}; }
    cp_arsn:   coverpoint arsn {
      bins ro = {ARSNOOP_READ_ONCE};
      bins rs = {ARSNOOP_READ_SHARED};
      bins ru = {ARSNOOP_READ_UNIQUE};
      // 其余值不建 bin, 自动不计入覆盖率
    }
    cp_awsn:   coverpoint awsn {
      bins wu  = {AWSNOOP_WRITE_UNIQUE};
      bins wlu = {AWSNOOP_WRITE_LINE_UNIQUE};
    }
    cp_dmode:  coverpoint dmode {                 // P3-1: 码型维度
      bins prbs   = {2'd0};
      bins xcode  = {2'd1};
      bins seq    = {2'd2};
      bins walk1  = {2'd3};
    }
    cp_aline:  coverpoint aline {                 // 目标行 (窗口内 4 行轮转覆盖)
      bins l0 = {2'd0}; bins l1 = {2'd1};
      bins l2 = {2'd2}; bins l3 = {2'd3};
    }
    wr_rd_cross: cross cp_write, cp_arsn;
  endgroup

  // ---- 质询/应答覆盖 (决策表格子) ----
  covergroup cg_snoop with function sample(ace_snoop_item it);
    cp_type: coverpoint it.acsnoop {
      bins rs = {ARSNOOP_READ_SHARED};
      bins mi = {ARSNOOP_MAKE_INVALID};
      bins ci = {ARSNOOP_CLEAN_INVALID};
      bins ro = {ARSNOOP_READ_ONCE};
    }
    cp_resp: coverpoint it.crresp {
      bins none      = {5'b00000};
      bins isshared  = {5'b01000};
      bins wasunique = {5'b10000};
      bins wasu_sh   = {5'b11000};
      bins dt_pd_wu  = {5'b10101};   // UD 行交数据: DT|PassDirty|WasUnique
    }
    type_resp_cross: cross cp_type, cp_resp;
  endgroup

  // ---- FSM 状态覆盖 (P3-1 补全: 四个状态机全态, run_phase 每 clk 采样) ----
  covergroup cg_fsm;
    cp_st_a: coverpoint vif.st_a {                // A 主 FSM (数据平面)
      bins m_idle = {3'd0}; bins m_w_aw = {3'd1}; bins m_w_w  = {3'd2};
      bins m_w_b  = {3'd3}; bins m_r_ar = {3'd4}; bins m_r_r  = {3'd5};
    }
    cp_sn_a: coverpoint vif.sn_a {                // A snoop 响应器 (协议平面)
      bins s_idle = {2'd0}; bins s_cr = {2'd1};
      bins s_cd   = {2'd2};                       // P2 新增: UD 行交数据
    }
    cp_st_b: coverpoint vif.st_b {                // B slave 引擎 (数据平面)
      bins b_idle = {2'd0}; bins b_w = {2'd1};
      bins b_b    = {2'd2}; bins b_r = {2'd3};
    }
    cp_hs_b: coverpoint vif.hs_b {                // B home (协议平面)
      bins h_idle    = {3'd0}; bins h_send_ac = {3'd1};
      bins h_wait_cr = {3'd2};
      bins h_wait_cd = {3'd3};                    // P2 新增: 等 CD 收货
      bins h_gap     = {3'd4};
    }
  endgroup

  // ---- RRESP 标签覆盖 (P2: 高 2 位, R 握手拍采样) ----
  covergroup cg_r;
    cp_rtag: coverpoint {vif.rresp[3], vif.rresp[2]}
             iff (vif.rvalid && vif.rready) {
      bins okay = {2'b00};            // 普通读
      bins pd   = {2'b01};            // PassDirty: RU 应答 (制造 UD)
      bins is   = {2'b10};            // IsShared:  RS 目录命中 (驱动 SC)
      illegal_bins both = {2'b11};    // 协议上不应同时出现 (A 侧也有检查)
    }
  endgroup

  covergroup cg_link;
    cp_mode: coverpoint {vif.retrain_link_active, vif.replay_delay_active} {
      bins normal = {2'b00}; bins replay = {2'b01}; bins retrain_link = {2'b10};
      illegal_bins both = {2'b11};
    }
    cp_mask: coverpoint vif.delay_channel_mask {
      bins aw={10'h001}; bins w={10'h002}; bins b={10'h004};
      bins ar={10'h008}; bins r={10'h010}; bins ac={10'h020};
      bins cr={10'h040}; bins cd={10'h080}; bins rack={10'h100}; bins wack={10'h200};
    }
    cp_timeout: coverpoint {vif.err_snoop_timeout_b, vif.err_slave_timeout_b,
                            vif.err_snoop_timeout_a, vif.err_main_timeout_a} {
      bins none={4'b0000}; bins a_main={4'b0001}; bins a_snoop={4'b0010};
      bins b_slave={4'b0100}; bins b_home={4'b1000};
    }
    mode_channel_cross: cross cp_mode, cp_mask;
  endgroup

  function new(string name = "ace_coverage", uvm_component parent = null);
    super.new(name, parent);
    ord_imp  = new("ord_imp", this);
    cg_ord   = new();
    cg_snoop = new();
    cg_fsm   = new();
    cg_r     = new();
    cg_link  = new();
    ord_last = new();
  endfunction

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    if (!uvm_config_db#(virtual ace_if)::get(this, "", "vif", vif))
      `uvm_fatal("NOVIF", "ace_coverage: ace_if 未通过 config_db 设置")
  endfunction

  // FSM 状态/RRESP 标签覆盖: 每 clk 采样 (状态随时钟变化, 与订单流无关)
  task run_phase(uvm_phase phase);
    forever begin
      @(posedge vif.aclk);
      cg_fsm.sample();
      cg_r.sample();
      cg_link.sample();
      // 命中位图同步记一笔 (报告里精确到 bin)
      seen_st_a[vif.st_a] = 1'b1;
      seen_sn_a[vif.sn_a] = 1'b1;
      seen_st_b[vif.st_b] = 1'b1;
      seen_hs_b[vif.hs_b] = 1'b1;
    end
  endtask

  function void write_ord(ace_order_item it);
    // 目标行号 = 行地址低 2 位 (addr[LINE_SHIFT +: 2])。
    // 注: to_line 在 ace_funcs.svh 中, 只被 module 内部 include, 类里不可用。
    ord_last.copy(it);
    n_ord++;
    cg_ord.sample(it.write, it.arsnoop, it.awsnoop, vif.cfg_data_mode,
                  it.addr[LINE_SHIFT +: 2]);
    seen_dmode[vif.cfg_data_mode]        = 1'b1;
    seen_aline[it.addr[LINE_SHIFT +: 2]] = 1'b1;
  endfunction

  // uvm_subscriber 的 write: 质询应答 (参数名须与基类一致)
  virtual function void write(ace_snoop_item t);
    cg_snoop.sample(t);
  endfunction

  function void report_phase(uvm_phase phase);
    super.report_phase(phase);
    // 注: 本 VCS 版本 get_inst_coverage() 恒 0, 使用全局覆盖率 (唯一实例, 语义等价)
    //     get_coverage() 只到 coverpoint 粒度; 精确到 bin 见末行命中位图 (1=踩到)
    `uvm_info("COV", $sformatf(
      {"==== 功能覆盖率明细 (data_mode=%0d, 订单数=%0d) ====\n",
       "[cg_ord  ] write=%3.0f%% arsn=%3.0f%% awsn=%3.0f%% dmode=%3.0f%% aline=%3.0f%% cross(w,arsn)=%3.0f%%\n",
       "[cg_snoop] type=%3.0f%% resp=%3.0f%% cross(type,resp)=%3.0f%%\n",
       "[cg_fsm  ] st_a=%3.0f%% sn_a=%3.0f%% st_b=%3.0f%% hs_b=%3.0f%%\n",
       "[cg_r    ] rtag=%3.0f%%\n",
       "[cg_link ] mode=%3.0f%% channel=%3.0f%% timeout=%3.0f%% cross=%3.0f%%\n",
       "[bin 命中位图, 1=踩到 0=未踩到, 位序与标签一致]\n",
       "  st_a [M_IDLE M_W_AW M_W_W M_W_B M_R_AR M_R_R] = %b%b%b%b%b%b\n",
       "  sn_a [S_IDLE S_CR S_CD]                       = %b%b%b\n",
       "  st_b [B_IDLE B_W B_B B_R]                     = %b%b%b%b\n",
       "  hs_b [H_IDLE H_SEND_AC H_WAIT_CR H_WAIT_CD H_GAP] = %b%b%b%b%b\n",
       "  dmode[prbs xcode seq walk1]                   = %b%b%b%b\n",
       "  aline[l0 l1 l2 l3]                            = %b%b%b%b"},
      vif.cfg_data_mode, n_ord,
      cg_ord.cp_write.get_coverage(), cg_ord.cp_arsn.get_coverage(),
      cg_ord.cp_awsn.get_coverage(), cg_ord.cp_dmode.get_coverage(),
      cg_ord.cp_aline.get_coverage(), cg_ord.wr_rd_cross.get_coverage(),
      cg_snoop.cp_type.get_coverage(), cg_snoop.cp_resp.get_coverage(),
      cg_snoop.type_resp_cross.get_coverage(),
      cg_fsm.cp_st_a.get_coverage(), cg_fsm.cp_sn_a.get_coverage(),
      cg_fsm.cp_st_b.get_coverage(), cg_fsm.cp_hs_b.get_coverage(),
      cg_r.cp_rtag.get_coverage(),
      cg_link.cp_mode.get_coverage(), cg_link.cp_mask.get_coverage(),
      cg_link.cp_timeout.get_coverage(), cg_link.mode_channel_cross.get_coverage(),
      seen_st_a[0], seen_st_a[1], seen_st_a[2], seen_st_a[3],
      seen_st_a[4], seen_st_a[5],
      seen_sn_a[0], seen_sn_a[1], seen_sn_a[2],
      seen_st_b[0], seen_st_b[1], seen_st_b[2], seen_st_b[3],
      seen_hs_b[0], seen_hs_b[1], seen_hs_b[2], seen_hs_b[3], seen_hs_b[4],
      seen_dmode[0], seen_dmode[1], seen_dmode[2], seen_dmode[3],
      seen_aline[0], seen_aline[1], seen_aline[2], seen_aline[3]),
      UVM_LOW)
  endfunction

endclass
