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
    .o_cnt_tx(vif.cnt_tx), .o_cnt_snoop(vif.cnt_snoop_a)
  );

  // ---------------- DUT: Module B (slave + home) ----------------
  module_b u_b (
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
    .cfg_en(cfg_en), .cfg_prbs_code(cfg_prbs_code),
    .cfg_data_mode(cfg_data_mode), .cfg_xcode(cfg_xcode),
    .cfg_snoop_gap(cfg_snoop_gap), .cfg_err_inject(cfg_err_inject_b),
    .cfg_err_clr(cfg_err_clr),
    .err_wr_data(vif.err_wr_data_b), .err_cd_data(vif.err_cd_data_b),
    .err_cr_mismatch(vif.err_cr_mismatch_b), .err_snoop_timeout(vif.err_snoop_timeout_b),
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
