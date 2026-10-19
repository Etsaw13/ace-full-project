// =====================================================================
// tb_direct.sv - 直连形态 smoke 测试 (design_report.md §6.4 形态二 / §7)
// 拓扑: Module A ↔ Module B 直接互连 (10 条通道一一对应)
// 场景: 用例1 数据面闭环 + 用例2 干净行质询全组合 (home 自动循环发起)
// 判据: §7.4 通过条件 —— 错误标志全 0 + SVA 零违例 + 事务数达标
// =====================================================================
`timescale 1ns / 1ps

module tb_direct;

  import ace_pkg::*;

  // ---------------- 参数 ----------------
  localparam int TARGET_TX    = 16;          // 目标完成事务数 (读+写)
  localparam int TIMEOUT_CYC  = 200_000;     // 总看门狗
  localparam int CYC          = 10;          // 时钟半周期 ns

  // ---------------- 时钟复位 ----------------
  logic aclk, areset_n;
  initial aclk = 1'b0;
  always #(CYC/2.0) aclk = ~aclk;

  // ---------------- tb 配置 ----------------
  logic [3:0]        cfg_scenario_a;
  logic [7:0]        cfg_prbs_code;
  logic [2:0]        cfg_data_mode;    // 数据码型 (+DATA_MODE=0..5, 默认 PRBS31)
  logic [7:0]        cfg_xcode;        // P3-1: 全同字节码型字节值
  logic [ADDR_W-1:0] cfg_base_addr;
  logic [7:0]        cfg_snoop_gap;
  logic [3:0]        cfg_err_inject_b;

  // ---------------- APB3 configuration buses ----------------
  logic        a_psel, a_penable, a_pwrite;
  logic [11:0] a_paddr;
  logic [31:0] a_pwdata;
  wire  [31:0] a_prdata;
  wire         a_pready, a_pslverr;
  logic        b_psel, b_penable, b_pwrite;
  logic [11:0] b_paddr;
  logic [31:0] b_pwdata;
  wire  [31:0] b_prdata;
  wire         b_pready, b_pslverr;

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
  // CD (A→B, 脏行交数据)
  wire                cdvalid, cdready, cdlast;
  wire [DATA_W-1:0]   cddata;
  // 确认 (A→B)
  wire                rack, wack;

  // ---------------- A/B 状态输出 (先声明后例化) ----------------
  logic err_rd_data_a, err_rsp_a, err_wr_prbs_a, any_err_a;
  logic [31:0] cnt_tx, cnt_snoop_a;
  logic err_wr_data_b, err_cd_data_b, err_cr_b, err_to_b, any_err_b;
  logic [31:0] cnt_wr, cnt_rd, cnt_snoop_b;
  int sva_err;
  int cnt_cd;                              // CD 交数据完成次数 (观测)

  // ---------------- DUT: Module A (master) ----------------
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
    .pclk(aclk), .presetn(areset_n), .psel(a_psel), .penable(a_penable),
    .pwrite(a_pwrite), .paddr(a_paddr), .pwdata(a_pwdata),
    .prdata(a_prdata), .pready(a_pready), .pslverr(a_pslverr),
    .ord_valid(1'b0), .ord_ready(), .ord_write(1'b0), .ord_arsnoop('0),
    .ord_awsnoop('0), .ord_awunique(1'b0), .ord_addr('0), .cfg_ord_ext(1'b0)
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
    .pclk(aclk), .presetn(areset_n), .psel(b_psel), .penable(b_penable),
    .pwrite(b_pwrite), .paddr(b_paddr), .pwdata(b_pwdata),
    .prdata(b_prdata), .pready(b_pready), .pslverr(b_pslverr)
  );

  // 状态已经是 APB 可读内部寄存器。层次连接仅供实时完成条件和波形观测。
  assign err_rd_data_a = u_a.err_rd_data;
  assign err_rsp_a     = u_a.err_rsp;
  assign err_wr_prbs_a = u_a.err_wr_prbs;
  assign any_err_a     = u_a.o_any_err;
  assign cnt_tx        = u_a.o_cnt_tx;
  assign cnt_snoop_a   = u_a.o_cnt_snoop;
  assign err_wr_data_b = u_b.err_wr_data;
  assign err_cd_data_b = u_b.err_cd_data;
  assign err_cr_b      = u_b.err_cr_mismatch;
  assign err_to_b      = u_b.err_snoop_timeout;
  assign any_err_b     = u_b.o_any_err;
  assign cnt_wr        = u_b.o_cnt_wr;
  assign cnt_rd        = u_b.o_cnt_rd;
  assign cnt_snoop_b   = u_b.o_cnt_snoop;

  // ---------------- 轻量 SVA (design_report §7.1 第 3 层) ----------------
  // iverilog 不支持并发断言: 本地跑时加 -D IVERILOG 关闭 (VCS 默认开启)
`ifndef IVERILOG
  // VALID 稳定性: 拉高未握手时下一拍不得撤销
  property p_stable(v, r);
    @(posedge aclk) v && !r |=> v;
  endproperty
  a_awv:  assert property (p_stable(awvalid, awready)) else sva_err++;
  a_wv:   assert property (p_stable(wvalid,  wready))  else sva_err++;
  a_arv:  assert property (p_stable(arvalid, arready)) else sva_err++;
  a_rv:   assert property (p_stable(rvalid,  rready))  else sva_err++;
  a_bv:   assert property (p_stable(bvalid,  bready))  else sva_err++;
  a_acv:  assert property (p_stable(acvalid, acready)) else sva_err++;
  a_crv:  assert property (p_stable(crvalid, crready)) else sva_err++;

  // CD: 单拍交整行, VALID 拉高未握手不得撤销
  a_cdv:  assert property (p_stable(cdvalid, cdready)) else sva_err++;
  a_cdl:  assert property (@(posedge aclk) cdvalid |-> cdlast) else sva_err++;

  // 接口响应码: 低 2 位恒 OKAY; RRESP 两个高位不得同时置起
  a_bresp: assert property (@(posedge aclk) bvalid |-> bresp == 2'b00) else sva_err++;
  a_rresp: assert property (@(posedge aclk) rvalid |->
              rresp[1:0] == 2'b00 && !(rresp[RR_PASSDIRTY] && rresp[RR_ISSHARED]))
              else sva_err++;

  // CRRESP 落在决策表的合法应答集合内 (0/IS/WU/WU|IS/DT|PD|WU)
  a_crr: assert property (@(posedge aclk) crvalid |->
              crresp inside {5'b00000, 5'b01000, 5'b10000, 5'b11000, 5'b10101})
              else sva_err++;

  // ACE ACK在对应响应完成后的下一拍产生，且只保持一个周期。
  a_rack: assert property (@(posedge aclk) disable iff (!areset_n)
              rack == $past(rvalid && rready && rlast)) else sva_err++;
  a_wack: assert property (@(posedge aclk) disable iff (!areset_n)
              wack == $past(bvalid && bready)) else sva_err++;

  // home 质询类型合法 (SC/UC 行 RS/MI/CI/RO 轮转; UD 行固定 CI)
  a_acsn: assert property (@(posedge aclk) acvalid |->
              acsnoop inside {ARSNOOP_READ_SHARED, ARSNOOP_MAKE_INVALID,
                              ARSNOOP_CLEAN_INVALID, ARSNOOP_READ_ONCE})
              else sva_err++;
`endif

  // ---------------- CD 交数据观测计数 ----------------
  always @(posedge aclk)
    if (cdvalid && cdready) cnt_cd++;

  // ---------------- 质询类型 / RRESP 标签观测 (验证覆盖自证) ----------------
  int cnt_sn_rs, cnt_sn_mi, cnt_sn_ci, cnt_sn_ro;
  int cnt_r_pd, cnt_r_is;
  always @(posedge aclk) begin
    if (acvalid && acready) begin
      if      (acsnoop == ARSNOOP_READ_SHARED)    cnt_sn_rs++;
      else if (acsnoop == ARSNOOP_MAKE_INVALID)   cnt_sn_mi++;
      else if (acsnoop == ARSNOOP_CLEAN_INVALID)  cnt_sn_ci++;
      else if (acsnoop == ARSNOOP_READ_ONCE)      cnt_sn_ro++;
    end
    if (rvalid && rready && rlast) begin
      if (rresp[RR_PASSDIRTY]) cnt_r_pd++;
      if (rresp[RR_ISSHARED])  cnt_r_is++;
    end
  end

  // ---------------- 临时调试: X 检测器 (定位 VIP signal_valid 报错的根源) ----------------
  wire [11:0] valid_bus = {awvalid, wvalid, arvalid, bvalid, rvalid,
                           acvalid, acready, crvalid, crready, cdvalid, rack, wack};
  wire [127:0] payload_bus = {awid, awaddr, arid, araddr, wdata, rdata,
                              bresp, rresp, bid, rid, awlen, arlen,
                              awsize, arsize, awsnoop, arsnoop, awunique,
                              awregion, arregion, awcache, arcache, awqos, arqos,
                              awdomain, ardomain, awbar, arbar, awlock, arlock,
                              acaddr, acsnoop, acprot, crresp, cddata,
                              wstrb, awunique};
  always @(posedge aclk)
    if ((^valid_bus) === 1'bx)
      $display("[XDET %0t] X in VALID bus: %b", $time, valid_bus);
  always @(posedge aclk)
    if ((^payload_bus) === 1'bx)
      $display("[XDET-P %0t] X in PAYLOAD bus (首现后不再重复打印)", $time);

  task automatic apb_a_write(input logic [11:0] addr,
                             input logic [31:0] data);
    begin
      @(negedge aclk);
      a_psel = 1'b1; a_penable = 1'b0; a_pwrite = 1'b1;
      a_paddr = addr; a_pwdata = data;
      @(negedge aclk);
      a_penable = 1'b1;
      @(negedge aclk);
      if (!a_pready || a_pslverr) $fatal(1, "Module A APB write failed: %03h", addr);
      a_psel = 1'b0; a_penable = 1'b0; a_pwrite = 1'b0;
    end
  endtask

  task automatic apb_b_write(input logic [11:0] addr,
                             input logic [31:0] data);
    begin
      @(negedge aclk);
      b_psel = 1'b1; b_penable = 1'b0; b_pwrite = 1'b1;
      b_paddr = addr; b_pwdata = data;
      @(negedge aclk);
      b_penable = 1'b1;
      @(negedge aclk);
      if (!b_pready || b_pslverr) $fatal(1, "Module B APB write failed: %03h", addr);
      b_psel = 1'b0; b_penable = 1'b0; b_pwrite = 1'b0;
    end
  endtask

  // ---------------- 主流程 ----------------
  initial begin
    a_psel = 1'b0; a_penable = 1'b0; a_pwrite = 1'b0;
    a_paddr = '0; a_pwdata = '0;
    b_psel = 1'b0; b_penable = 1'b0; b_pwrite = 1'b0;
    b_paddr = '0; b_pwdata = '0;
    cfg_scenario_a  = '0;
    cfg_prbs_code   = 8'hA5;
    cfg_data_mode   = 3'd0;                 // 默认 PRBS31
    cfg_xcode       = 8'h5A;
    if (!$value$plusargs("DATA_MODE=%d", cfg_data_mode)) begin
      // plusarg 未提供时: 编译期 define 兜底 (+define+DATA_MODE=n)
`ifdef DATA_MODE
      cfg_data_mode = `DATA_MODE;
`else
      cfg_data_mode = 3'd0;
`endif
    end
    if (cfg_data_mode > 3'd5)
      `uvm_fatal("DATA_MODE", "DATA_MODE must be 0..5")
    // 注: mode 为运行期常量, 一次仿真一个码型 (中途切换会假报错, 见 P3-1)
    cfg_base_addr   = 44'h2000_0000;
    cfg_snoop_gap   = 8'd10;
    cfg_err_inject_b= '0;

    areset_n = 1'b0;
    repeat (10) @(posedge aclk);
    areset_n = 1'b1;
    repeat (2) @(posedge aclk);
    apb_a_write(12'h004, {4'b0, cfg_scenario_a, cfg_xcode, 5'b0,
                          cfg_data_mode, cfg_prbs_code});
    apb_a_write(12'h008, cfg_base_addr[31:0]);
    apb_a_write(12'h00c, {20'b0, cfg_base_addr[43:32]});
    apb_b_write(12'h004, {8'b0, cfg_xcode, 5'b0,
                          cfg_data_mode, cfg_prbs_code});
    apb_b_write(12'h008, {20'b0, cfg_err_inject_b, cfg_snoop_gap});
    apb_b_write(12'h000, 32'h1);
    apb_a_write(12'h000, 32'h1);
  end

  // ---------------- 调试观测 (默认关闭; 编译加 +define+DBG / -D DBG 开启) ----------------
`ifdef DBG
  always @(u_b.acvalid or acready or u_b.scan_hit or u_b.aw_pend or
           u_b.ar_pend or u_b.hs or u_b.gap_cnt or rack or wack or
           u_b.dir_valid[0] or u_b.dir_valid[1] or u_b.dir_valid[2] or u_b.dir_valid[3])
    $display("[DBG %0t] acv=%b acrdy=%b scan=%b awp=%b arp=%b hs=%0d gap=%0d dirv=%b%b%b%b rack=%b wack=%b",
             $time, u_b.acvalid, acready, u_b.scan_hit, u_b.aw_pend,
             u_b.ar_pend, u_b.hs, u_b.gap_cnt,
             u_b.dir_valid[3], u_b.dir_valid[2], u_b.dir_valid[1], u_b.dir_valid[0],
             rack, wack);

  always @(rack)
    if (rack) $display("[RACK %0t] ar_sn=%h dir_set_en=%b ar_line=%h",
                       $time, u_b.ar_sn_l, u_b.dir_set_en, u_b.ar_line_l);

  always @(wack)
    if (wack) $display("[WACK %0t] aw_line=%h cur_line=%h base=%h line_idx=%h wdata=%h",
                       $time, u_b.aw_line_l, u_a.cur_line, u_a.base_line,
                       u_a.line_idx, wdata);

  // CRRESP 失配瞬间: 两侧同槽位对账
  always @(u_b.err_cr_mismatch_q)
    if (u_b.err_cr_mismatch_q)
      $display("[CRMISS %0t] type=%h exp=%b act=%b idx=%0d dtag=%h A_st=%0d A_tag=%h",
               $time, u_b.h_type_l, u_b.h_exp_l, crresp, u_b.h_idx_l,
               u_b.dir_tag[u_b.h_idx_l], u_a.c_state[u_b.h_idx_l],
               u_a.c_tag[u_b.h_idx_l]);
`endif

`ifdef WAVES
  initial begin
    $dumpfile("sim/tb_direct.vcd");
    $dumpvars(0, tb_direct);
  end
`endif

  // ---------------- 结束判定 ----------------
  logic done;
  initial done = 1'b0;

  // 线程1: 目标事务数达标
  initial begin
    @(posedge areset_n);
    wait (cnt_tx >= TARGET_TX);
    done = 1'b1;
  end

  // 线程2: 看门狗超时
  initial begin
    repeat (TIMEOUT_CYC) @(posedge aclk);
    if (!done) begin
      $display("[TB] ERROR: watchdog timeout (cnt_tx=%0d cnt_wr=%0d cnt_rd=%0d)",
               cnt_tx, cnt_wr, cnt_rd);
      $display("TB_FAIL: timeout");
`ifdef PASSIVE_VIP
      $fatal(1, "TB_FAIL: timeout");
`else
      $finish;
`endif
    end
  end

  // 汇总
  initial begin
    @(posedge done);
    repeat (50) @(posedge aclk);        // 留最后一笔 snoop 收尾
    apb_a_write(12'h000, 32'h0);
    apb_b_write(12'h000, 32'h0);

    $display("==================================================");
    $display(" 结果汇总: (data_mode=%0d)", cfg_data_mode);
    $display("   A: cnt_tx=%0d cnt_snoop=%0d any_err=%b (rd=%b rsp=%b wrprbs=%b)",
             cnt_tx, cnt_snoop_a, any_err_a, err_rd_data_a, err_rsp_a, err_wr_prbs_a);
    $display("   B: cnt_wr=%0d cnt_rd=%0d cnt_snoop=%0d cnt_cd=%0d any_err=%b (wr=%b cd=%b cr=%b to=%b)",
             cnt_wr, cnt_rd, cnt_snoop_b, cnt_cd, any_err_b,
             err_wr_data_b, err_cd_data_b, err_cr_b, err_to_b);
    $display("   SVA 违例数: %0d", sva_err);
    $display("   质询类型: RS=%0d MI=%0d CI=%0d RO=%0d | RRESP标签: PD=%0d IS=%0d",
             cnt_sn_rs, cnt_sn_mi, cnt_sn_ci, cnt_sn_ro, cnt_r_pd, cnt_r_is);
    $display("==================================================");
    if (!any_err_a && !any_err_b && sva_err == 0 && cnt_cd > 0) begin
      $display("TB_PASS: smoke (direct-connect, all-channel scope, cnt_cd=%0d)", cnt_cd);
    end else begin
      $display("TB_FAIL: see summary above");
    end
`ifndef PASSIVE_VIP
    $finish;
`else
    if (any_err_a || any_err_b || sva_err != 0)
      $fatal(1, "TB_FAIL: see summary above");
`endif
  end

endmodule
