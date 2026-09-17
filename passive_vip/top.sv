// UVM functional stimulus/scoreboard plus Synopsys passive AXI_ACE monitor.
`timescale 1ns/1ps
`include "svt_axi.uvm.pkg"
`include "svt_axi_if.svi"
`include "svt_axi_master_bind_if.svi"
module test_top;
  import uvm_pkg::*; import svt_uvm_pkg::*; import svt_axi_uvm_pkg::*;
  import ace_pkg::*; import ace_uvm_pkg::*;
  `include "top_test.sv"

  // Existing UVM top owns clocks, reset, A/B, ace_if and cfg_ord_ext=1.
  tb_uvm_top dut();
  svt_axi_if axi_if();
  assign axi_if.common_aclk=dut.aclk;
  assign axi_if.master_if[0].aresetn=dut.areset_n;

  // This RTL has no AXI USER signals; provide legal inactive values to VIP.
  wire awuser0, aruser0, wuser0, buser0, ruser0;
  assign awuser0=0; assign aruser0=0; assign wuser0=0;
  assign buser0=0; assign ruser0=0;

  initial begin
    uvm_config_db#(svt_axi_vif)::set(uvm_root::get(),
      "uvm_test_top.vip_env","vif",axi_if);
    run_test();
  end

  svt_axi_master_bind_if #(
    .AWADDR_WIDTH_PARAM(44),.ARADDR_WIDTH_PARAM(44),
    .AWLEN_WIDTH_PARAM(8),.ARLEN_WIDTH_PARAM(8),
    .AWLOCK_WIDTH_PARAM(1),.ARLOCK_WIDTH_PARAM(1),
    .AWID_WIDTH_PARAM(8),.ARID_WIDTH_PARAM(8),.BID_WIDTH_PARAM(8),.RID_WIDTH_PARAM(8),
    .AWUSER_WIDTH_PARAM(1),.ARUSER_WIDTH_PARAM(1),.WUSER_WIDTH_PARAM(1),
    .BUSER_WIDTH_PARAM(1),.RUSER_WIDTH_PARAM(1),
    .RDATA_WIDTH_PARAM(128),.WDATA_WIDTH_PARAM(128),.WSTRB_WIDTH_PARAM(16),
    .RRESP_WIDTH_PARAM(4),.BRESP_WIDTH_PARAM(2),
    .ACADDR_WIDTH_PARAM(44),.ACSNOOP_WIDTH_PARAM(4),.ACPROT_WIDTH_PARAM(3),
    .CRRESP_WIDTH_PARAM(5),.CDDATA_WIDTH_PARAM(128)) ace_mon_bind_if(
    .awvalid(dut.awvalid),.awready(dut.awready),.awid(dut.awid[7:0]),.awaddr(dut.awaddr),
    .awlen(dut.awlen),.awsize(dut.awsize),.awburst(dut.awburst),.awlock(dut.awlock),
    .awcache(dut.awcache),.awprot(dut.awprot),.awqos(dut.awqos),.awregion(dut.awregion),
    .awsnoop(dut.awsnoop),.awdomain(dut.awdomain),.awbar(dut.awbar),
    .awunique(dut.awunique),.awuser(awuser0),
    .wvalid(dut.wvalid),.wready(dut.wready),.wdata(dut.wdata),.wstrb(dut.wstrb),
    .wlast(dut.wlast),.wuser(wuser0),
    .bvalid(dut.bvalid),.bready(dut.bready),.bid(dut.bid[7:0]),.bresp(dut.bresp),.buser(buser0),
    .arvalid(dut.arvalid),.arready(dut.arready),.arid(dut.arid[7:0]),.araddr(dut.araddr),
    .arlen(dut.arlen),.arsize(dut.arsize),.arburst(dut.arburst),.arlock(dut.arlock),
    .arcache(dut.arcache),.arprot(dut.arprot),.arqos(dut.arqos),.arregion(dut.arregion),
    .arsnoop(dut.arsnoop),.ardomain(dut.ardomain),.arbar(dut.arbar),.aruser(aruser0),
    .rvalid(dut.rvalid),.rready(dut.rready),.rid(dut.rid[7:0]),.rdata(dut.rdata),
    .rresp(dut.rresp),.rlast(dut.rlast),.ruser(ruser0),
    .acvalid(dut.acvalid),.acready(dut.acready),.acaddr(dut.acaddr),
    .acsnoop(dut.acsnoop),.acprot(dut.acprot),
    .crvalid(dut.crvalid),.crready(dut.crready),.crresp(dut.crresp),
    .cdvalid(dut.cdvalid),.cdready(dut.cdready),.cddata(dut.cddata),.cdlast(dut.cdlast),
    .rack(dut.rack),.wack(dut.wack));

  svt_axi_master_connector #(0) ace_mon_conn(
    axi_if.master_if[0].svt_axi_master_async_modport,ace_mon_bind_if);
endmodule
