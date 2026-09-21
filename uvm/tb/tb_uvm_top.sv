// =====================================================================
// tb_uvm_top.sv - UVM 验证顶层
// 拓扑: Module A ↔ Module B 直连 (同 tb_direct), 激励 = UVM 外部订单
//   - module_a 的 cfg_ord_ext=1: 订单来自 UVM driver
//   - B 作为协议应答方/镜像参考 (后续可换 VIP slave)
// =====================================================================
`timescale 1ns / 1ps
`default_nettype none

module tb_uvm_top;

  import uvm_pkg::*;
  import ace_pkg::*;
  import ace_uvm_pkg::*;

  localparam int CYC = 10;

  logic aclk, areset_n;
  initial aclk = 1'b0;
  always #(CYC/2.0) aclk = ~aclk;

  // ---------------- 配置 ----------------
  logic        cfg_en, cfg_err_clr, cfg_ord_ext;
  logic [3:0]        cfg_scenario_a;
  logic [7:0]        cfg_prbs_code, cfg_snoop_gap;
  logic [1:0]        cfg_data_mode;       // P3-1: 数据码型 (+DATA_MODE=0..3)
  logic [7:0]        cfg_xcode;           // P3-1: 全同字节码型字节值
  logic [3:0]        cfg_err_inject_b;
  logic [ADDR_W-1:0] cfg_base_addr;
  logic replay_delay_active, retrain_link_active;
  logic [15:0] delay_cycles;
  logic [9:0] delay_channel_mask;
  wire  [9:0] channel_delay_active, channel_pending;

  // ---------------- 通道连线 (A↔B 直连) ----------------
  // AW (A→B)
  wire                awvalid, awready;
  wire [ID_W-1:0]     awid;
  wire [ADDR_W-1:0]   awaddr;
  wire [LEN_W-1:0]    awlen;
  wire [2:0]          awsize;
  wire [1:0]          awburst;
  wire [3:0]          awregion;
  wire                awlock;
  wire [3:0]          awcache;
  wire [2:0]          awprot;
  wire [3:0]          awqos;
  wire [2:0]          awsnoop;
  wire [1:0]          awdomain;
  wire [1:0]          awbar;
  wire                awunique;
  // W (A→B)
  wire                wvalid, wready, wlast;
  wire [DATA_W-1:0]   wdata;
  wire [STRB_W-1:0]   wstrb;
  // B (B→A)
  wire                bvalid, bready;
  wire [ID_W-1:0]     bid;
  wire [1:0]          bresp;
  // AR (A→B)
  wire                arvalid, arready;
  wire [ID_W-1:0]     arid;
  wire [ADDR_W-1:0]   araddr;
  wire [LEN_W-1:0]    arlen;
  wire [2:0]          arsize;
  wire [1:0]          arburst;
  wire [3:0]          arregion;
  wire                arlock;
  wire [3:0]          arcache;
  wire [2:0]          arprot;
  wire [3:0]          arqos;
  wire [3:0]          arsnoop;
  wire [1:0]          ardomain;
  wire [1:0]          arbar;
  // R (B→A)
  wire                rvalid, rready, rlast;
  wire [ID_W-1:0]     rid;
  wire [DATA_W-1:0]   rdata;
  wire [RRESP_W-1:0]  rresp;
  // AC (B→A)
  wire                acvalid, acready;
  wire [ACVID_W-1:0]  acvid;
  wire [ADDR_W-1:0]   acaddr;
  wire [3:0]          acsnoop;
  wire [2:0]          acprot;
  // CR (A→B)
  wire                crvalid, crready;
  wire [CRRESP_W-1:0] crresp;
  // CD (A→B, 预留)
  wire                cdvalid, cdready, cdlast;
  wire [DATA_W-1:0]   cddata;
  // 确认 (A→B)
  wire                rack, wack;

  localparam int AW_PW=ID_W+ADDR_W+LEN_W+29, W_PW=DATA_W+STRB_W+1;
  localparam int B_PW=ID_W+2, AR_PW=ID_W+ADDR_W+LEN_W+29;
  localparam int R_PW=ID_W+DATA_W+RRESP_W+1, AC_PW=ACVID_W+ADDR_W+7;
  localparam int CR_PW=CRRESP_W, CD_PW=DATA_W+1;
  wire l_awvalid,l_awready,l_wvalid,l_wready,l_bvalid,l_bready;
  wire l_arvalid,l_arready,l_rvalid,l_rready,l_acvalid,l_acready;
  wire l_crvalid,l_crready,l_cdvalid,l_cdready,l_rack,l_wack;
  wire [AW_PW-1:0] aw_in_p,aw_out_p; wire [W_PW-1:0] w_in_p,w_out_p;
  wire [B_PW-1:0] b_in_p,b_out_p; wire [AR_PW-1:0] ar_in_p,ar_out_p;
  wire [R_PW-1:0] r_in_p,r_out_p; wire [AC_PW-1:0] ac_in_p,ac_out_p;
  wire [CR_PW-1:0] cr_in_p,cr_out_p; wire [CD_PW-1:0] cd_in_p,cd_out_p;
  wire [ID_W-1:0] l_awid,l_bid,l_arid,l_rid;
  wire [ADDR_W-1:0] l_awaddr,l_araddr,l_acaddr;
  wire [LEN_W-1:0] l_awlen,l_arlen; wire [2:0] l_awsize,l_arsize,l_acprot;
  wire [1:0] l_awburst,l_ardomain,l_arbar,l_bresp,l_arburst,l_awdomain,l_awbar;
  wire [3:0] l_awregion,l_awcache,l_awqos,l_arregion,l_arcache,l_arqos,l_arsnoop,l_acsnoop;
  wire l_awlock,l_awunique,l_arlock,l_wlast,l_rlast,l_cdlast;
  wire [2:0] l_awprot,l_awsnoop,l_arprot;
  wire [DATA_W-1:0] l_wdata,l_rdata,l_cddata; wire [STRB_W-1:0] l_wstrb;
  wire [RRESP_W-1:0] l_rresp; wire [ACVID_W-1:0] l_acvid;
  wire [CRRESP_W-1:0] l_crresp;

  assign aw_in_p={awid,awaddr,awlen,awsize,awburst,awregion,awlock,awcache,awprot,awqos,awsnoop,awdomain,awbar,awunique};
  assign {l_awid,l_awaddr,l_awlen,l_awsize,l_awburst,l_awregion,l_awlock,l_awcache,l_awprot,l_awqos,l_awsnoop,l_awdomain,l_awbar,l_awunique}=aw_out_p;
  assign w_in_p={wdata,wstrb,wlast}; assign {l_wdata,l_wstrb,l_wlast}=w_out_p;
  assign b_in_p={l_bid,l_bresp}; assign {bid,bresp}=b_out_p;
  assign ar_in_p={arid,araddr,arlen,arsize,arburst,arregion,arlock,arcache,arprot,arqos,arsnoop,ardomain,arbar};
  assign {l_arid,l_araddr,l_arlen,l_arsize,l_arburst,l_arregion,l_arlock,l_arcache,l_arprot,l_arqos,l_arsnoop,l_ardomain,l_arbar}=ar_out_p;
  assign r_in_p={l_rid,l_rdata,l_rresp,l_rlast}; assign {rid,rdata,rresp,rlast}=r_out_p;
  assign ac_in_p={l_acvid,l_acaddr,l_acsnoop,l_acprot}; assign {acvid,acaddr,acsnoop,acprot}=ac_out_p;
  assign cr_in_p=crresp; assign l_crresp=cr_out_p;
  assign cd_in_p={cddata,cdlast}; assign {l_cddata,l_cdlast}=cd_out_p;

  ace_ucie_link_model #(.AW_W(AW_PW),.W_W(W_PW),.B_W(B_PW),.AR_W(AR_PW),
    .R_W(R_PW),.AC_W(AC_PW),.CR_W(CR_PW),.CD_W(CD_PW)) u_link (
    .clk(aclk),.reset_n(areset_n),.replay_delay_active(replay_delay_active),
    .retrain_link_active(retrain_link_active),.delay_cycles(delay_cycles),
    .delay_channel_mask(delay_channel_mask),.channel_delay_active(channel_delay_active),
    .channel_pending(channel_pending),
    .s_awvalid(awvalid),.s_awready(awready),.s_aw(aw_in_p),.m_awvalid(l_awvalid),.m_awready(l_awready),.m_aw(aw_out_p),
    .s_wvalid(wvalid),.s_wready(wready),.s_w(w_in_p),.m_wvalid(l_wvalid),.m_wready(l_wready),.m_w(w_out_p),
    .s_bvalid(l_bvalid),.s_bready(l_bready),.s_b(b_in_p),.m_bvalid(bvalid),.m_bready(bready),.m_b(b_out_p),
    .s_arvalid(arvalid),.s_arready(arready),.s_ar(ar_in_p),.m_arvalid(l_arvalid),.m_arready(l_arready),.m_ar(ar_out_p),
    .s_rvalid(l_rvalid),.s_rready(l_rready),.s_r(r_in_p),.m_rvalid(rvalid),.m_rready(rready),.m_r(r_out_p),
    .s_acvalid(l_acvalid),.s_acready(l_acready),.s_ac(ac_in_p),.m_acvalid(acvalid),.m_acready(acready),.m_ac(ac_out_p),
    .s_crvalid(crvalid),.s_crready(crready),.s_cr(cr_in_p),.m_crvalid(l_crvalid),.m_crready(l_crready),.m_cr(cr_out_p),
    .s_cdvalid(cdvalid),.s_cdready(cdready),.s_cd(cd_in_p),.m_cdvalid(l_cdvalid),.m_cdready(l_cdready),.m_cd(cd_out_p),
    .s_rack(rack),.m_rack(l_rack),.s_wack(wack),.m_wack(l_wack));

  // ---------------- 接口实例 ----------------
  ace_if vif (aclk, areset_n);

  // ---------------- DUT: Module A (cfg_ord_ext=1, 激励来自 UVM) ----------------
  module_a u_a (
    .aclk(aclk), .areset_n(areset_n),
    .awvalid(awvalid), .awready(awready), .awid(awid), .awaddr(awaddr),
    .awlen(awlen), .awsize(awsize), .awburst(awburst), .awregion(awregion),
    .awlock(awlock), .awcache(awcache), .awprot(awprot), .awqos(awqos),
    .awsnoop(awsnoop), .awdomain(awdomain), .awbar(awbar), .awunique(awunique),
    .wvalid(wvalid), .wready(wready), .wdata(wdata), .wstrb(wstrb), .wlast(wlast),
    .bvalid(bvalid), .bready(bready), .bid(bid), .bresp(bresp),
    .arvalid(arvalid), .arready(arready), .arid(arid), .araddr(araddr),
    .arlen(arlen), .arsize(arsize), .arburst(arburst), .arregion(arregion),
    .arlock(arlock), .arcache(arcache), .arprot(arprot), .arqos(arqos),
    .arsnoop(arsnoop), .ardomain(ardomain), .arbar(arbar),
    .rvalid(rvalid), .rready(rready), .rid(rid), .rdata(rdata),
    .rresp(rresp), .rlast(rlast),
    .acvalid(acvalid), .acready(acready), .acvid(acvid), .acaddr(acaddr),
    .acsnoop(acsnoop), .acprot(acprot),
    .crvalid(crvalid), .crready(crready), .crresp(crresp),
    .cdvalid(cdvalid), .cdready(cdready), .cddata(cddata), .cdlast(cdlast),
    .rack(rack), .wack(wack),
    .cfg_en(cfg_en), .cfg_scenario('0), .cfg_prbs_code(cfg_prbs_code),
    .cfg_data_mode(cfg_data_mode), .cfg_xcode(cfg_xcode),
    .cfg_base_addr(cfg_base_addr), .cfg_err_clr(cfg_err_clr),
    // 外部订单 ← UVM driver
    .ord_valid(vif.ord_valid), .ord_ready(vif.ord_ready),
    .ord_write(vif.ord_write), .ord_arsnoop(vif.ord_arsnoop),
    .ord_awsnoop(vif.ord_awsnoop), .ord_awunique(vif.ord_awunique),
    .ord_addr(vif.ord_addr), .cfg_ord_ext(cfg_ord_ext),
    // 状态 → 接口 (输出直连接口信号)
    .err_rd_data(vif.err_rd_data_a), .err_rsp(vif.err_rsp_a),
    .err_wr_prbs(vif.err_wr_prbs_a), .o_any_err(vif.any_err_a),
    .err_main_timeout(vif.err_main_timeout_a),
    .err_snoop_timeout(vif.err_snoop_timeout_a),
    .o_main_wait_cnt(vif.main_wait_cnt_a),
    .o_snoop_wait_cnt(vif.snoop_wait_cnt_a),
    .o_cnt_tx(vif.cnt_tx), .o_cnt_snoop(vif.cnt_snoop_a)
  );

  // ---------------- DUT: Module B (slave + home) ----------------
  module_b u_b (
    .aclk(aclk), .areset_n(areset_n),
    .awvalid(l_awvalid), .awready(l_awready), .awid(l_awid), .awaddr(l_awaddr),
    .awlen(l_awlen), .awsize(l_awsize), .awburst(l_awburst), .awregion(l_awregion),
    .awlock(l_awlock), .awcache(l_awcache), .awprot(l_awprot), .awqos(l_awqos),
    .awsnoop(l_awsnoop), .awdomain(l_awdomain), .awbar(l_awbar), .awunique(l_awunique),
    .wvalid(l_wvalid), .wready(l_wready), .wdata(l_wdata), .wstrb(l_wstrb), .wlast(l_wlast),
    .bvalid(l_bvalid), .bready(l_bready), .bid(l_bid), .bresp(l_bresp),
    .arvalid(l_arvalid), .arready(l_arready), .arid(l_arid), .araddr(l_araddr),
    .arlen(l_arlen), .arsize(l_arsize), .arburst(l_arburst), .arregion(l_arregion),
    .arlock(l_arlock), .arcache(l_arcache), .arprot(l_arprot), .arqos(l_arqos),
    .arsnoop(l_arsnoop), .ardomain(l_ardomain), .arbar(l_arbar),
    .rvalid(l_rvalid), .rready(l_rready), .rid(l_rid), .rdata(l_rdata),
    .rresp(l_rresp), .rlast(l_rlast),
    .acvalid(l_acvalid), .acready(l_acready), .acvid(l_acvid), .acaddr(l_acaddr),
    .acsnoop(l_acsnoop), .acprot(l_acprot),
    .crvalid(l_crvalid), .crready(l_crready), .crresp(l_crresp),
    .cdvalid(l_cdvalid), .cdready(l_cdready), .cddata(l_cddata), .cdlast(l_cdlast),
    .rack(l_rack), .wack(l_wack),
    .cfg_en(cfg_en), .cfg_prbs_code(cfg_prbs_code),
    .cfg_data_mode(cfg_data_mode), .cfg_xcode(cfg_xcode),
    .cfg_snoop_gap(cfg_snoop_gap), .cfg_err_inject(cfg_err_inject_b),
    .cfg_err_clr(cfg_err_clr),
    .err_wr_data(vif.err_wr_data_b), .err_cd_data(vif.err_cd_data_b),
    .err_cr_mismatch(vif.err_cr_mismatch_b), .err_snoop_timeout(vif.err_snoop_timeout_b),
    .err_slave_timeout(vif.err_slave_timeout_b),
    .o_slave_wait_cnt(vif.slave_wait_cnt_b), .o_home_wait_cnt(vif.home_wait_cnt_b),
    .o_any_err(vif.any_err_b),
    .o_cnt_wr(vif.cnt_wr), .o_cnt_rd(vif.cnt_rd), .o_cnt_snoop(vif.cnt_snoop_b)
  );

  // ---------------- 被动观测信号 → 接口 ----------------
  assign vif.acvalid = acvalid;
  assign vif.acready = acready;
  assign vif.crvalid = crvalid;
  assign vif.crready = crready;
  assign vif.acsnoop = acsnoop;
  assign vif.crresp  = crresp;
  assign vif.rack    = rack;
  assign vif.wack    = wack;
  // R 通道标签观测 (P3-1 覆盖用)
  assign vif.rvalid  = rvalid;
  assign vif.rready  = rready;
  assign vif.rresp   = rresp;
  // FSM 状态观测 (层次引用, P3-1 状态覆盖用)
  assign vif.st_a = u_a.st;
  assign vif.sn_a = u_a.sn;
  assign vif.st_b = u_b.st;
  assign vif.hs_b = u_b.hs;
  assign replay_delay_active = vif.replay_delay_active;
  assign retrain_link_active = vif.retrain_link_active;
  assign delay_cycles = vif.delay_cycles;
  assign delay_channel_mask = vif.delay_channel_mask;
  assign vif.channel_delay_active = channel_delay_active;
  assign vif.channel_pending = channel_pending;

  always_ff @(posedge aclk or negedge areset_n) begin : link_counting
    integer k;
    if (!areset_n) begin
      for (k=0;k<10;k=k+1) begin vif.link_in_cnt[k]<='0; vif.link_out_cnt[k]<='0; end
    end else begin
      if (awvalid&&awready)     vif.link_in_cnt[0]  <= vif.link_in_cnt[0]+1'b1;
      if (l_awvalid&&l_awready) vif.link_out_cnt[0] <= vif.link_out_cnt[0]+1'b1;
      if (wvalid&&wready)       vif.link_in_cnt[1]  <= vif.link_in_cnt[1]+1'b1;
      if (l_wvalid&&l_wready)   vif.link_out_cnt[1] <= vif.link_out_cnt[1]+1'b1;
      if (l_bvalid&&l_bready)   vif.link_in_cnt[2]  <= vif.link_in_cnt[2]+1'b1;
      if (bvalid&&bready)       vif.link_out_cnt[2] <= vif.link_out_cnt[2]+1'b1;
      if (arvalid&&arready)     vif.link_in_cnt[3]  <= vif.link_in_cnt[3]+1'b1;
      if (l_arvalid&&l_arready) vif.link_out_cnt[3] <= vif.link_out_cnt[3]+1'b1;
      if (l_rvalid&&l_rready)   vif.link_in_cnt[4]  <= vif.link_in_cnt[4]+1'b1;
      if (rvalid&&rready)       vif.link_out_cnt[4] <= vif.link_out_cnt[4]+1'b1;
      if (l_acvalid&&l_acready) vif.link_in_cnt[5]  <= vif.link_in_cnt[5]+1'b1;
      if (acvalid&&acready)     vif.link_out_cnt[5] <= vif.link_out_cnt[5]+1'b1;
      if (crvalid&&crready)     vif.link_in_cnt[6]  <= vif.link_in_cnt[6]+1'b1;
      if (l_crvalid&&l_crready) vif.link_out_cnt[6] <= vif.link_out_cnt[6]+1'b1;
      if (cdvalid&&cdready)     vif.link_in_cnt[7]  <= vif.link_in_cnt[7]+1'b1;
      if (l_cdvalid&&l_cdready) vif.link_out_cnt[7] <= vif.link_out_cnt[7]+1'b1;
      if (rack)                 vif.link_in_cnt[8]  <= vif.link_in_cnt[8]+1'b1;
      if (l_rack)               vif.link_out_cnt[8] <= vif.link_out_cnt[8]+1'b1;
      if (wack)                 vif.link_in_cnt[9]  <= vif.link_in_cnt[9]+1'b1;
      if (l_wack)               vif.link_out_cnt[9] <= vif.link_out_cnt[9]+1'b1;
    end
  end

  // ---------------- 复位与配置 ----------------
  initial begin
    areset_n          = 1'b0;
    cfg_en            = 1'b0;
    cfg_err_clr       = 1'b0;
    cfg_ord_ext       = 1'b1;              // UVM: 外部订单源
    cfg_scenario_a    = '0;
    cfg_prbs_code     = 8'hA5;
    cfg_data_mode     = 2'd0;              // P3-1: 默认 PRBS
    cfg_xcode         = 8'h5A;
    if (!$value$plusargs("DATA_MODE=%d", cfg_data_mode)) begin
      // plusarg 未提供时: 编译期 define 兜底 (+define+DATA_MODE=n)
`ifdef DATA_MODE
      cfg_data_mode   = `DATA_MODE;
`else
      cfg_data_mode   = 2'd0;
`endif
    end
    // 注: mode 为运行期常量, 一次仿真一个码型 (中途切换会假报错, 见 P3-1)
    vif.cfg_data_mode = cfg_data_mode;   // 报告给 coverage/测试
    vif.cfg_xcode     = cfg_xcode;
    cfg_snoop_gap     = 8'd10;
    cfg_err_inject_b  = '0;
    cfg_base_addr     = 44'h2000_0000;
    vif.replay_delay_active = 1'b0;
    vif.retrain_link_active = 1'b0;
    vif.delay_cycles = '0;
    vif.delay_channel_mask = 10'h3ff;
    vif.expect_timeout = 1'b0;
    if ($value$plusargs("REPLAY_DELAY=%d", vif.delay_cycles))
      vif.replay_delay_active = 1'b1;
    if ($value$plusargs("RETRAIN_LINK_DELAY=%d", vif.delay_cycles))
      vif.retrain_link_active = 1'b1;
    if ($value$plusargs("DELAY_MASK=%h", vif.delay_channel_mask)) begin end
    repeat (10) @(posedge aclk);
    areset_n = 1'b1;
    repeat (5)  @(posedge aclk);
    cfg_en = 1'b1;
  end

  // ---------------- UVM 启动 ----------------
  initial begin
    uvm_config_db#(virtual ace_if)::set(null, "*", "vif", vif);
`ifndef PASSIVE_VIP
    run_test();
`endif
  end

endmodule

`default_nettype wire
