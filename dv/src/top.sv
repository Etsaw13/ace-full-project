`timescale 1ns/1ps
`define ACE_AGENT_TEST

module test_top;

M2_clci_ucie_s die0();
M2_clci_ucie_s die1();

reg pclk;
reg presetn;
reg top_pll_800mhz;
reg soc_i_pclk;
reg soc_i_presetn;
reg reset_n;
reg ref_clk;

reg axi_5_clk;
reg axi_5_rst_n;
reg ace_clk;
reg ace_rst_n;

reg mcu_trst_n;

`ifdef ACE_AGENT_TEST
import ace_pkg::*;

// Match tb_direct: internal A traffic generator and autonomous B home node.
integer target_tx = 16;
integer traffic_timeout_cycles = 200000;
integer burst_beats = 4;
integer cnt_sn_rs = 0, cnt_sn_mi = 0, cnt_sn_ci = 0, cnt_sn_ro = 0;
integer cnt_r_pd = 0, cnt_r_is = 0;
integer cnt_aw = 0, cnt_ar = 0, cnt_cd_expected = 0;
integer cnt_single_wr = 0, cnt_single_rd = 0;
integer cnt_burst_wr = 0, cnt_burst_rd = 0;
integer cnt_w_beats = 0, cnt_r_beats = 0;
integer test_type_next = 1;
integer prev_single_wr, prev_single_rd, prev_burst_wr, prev_burst_rd;
logic [7:0] source_awlen = '0, source_arlen = '0;
logic [7:0] source_wbeat = '0, source_rbeat = '0;
logic source_write_active = 1'b0, source_read_active = 1'b0;
string test_phase = "link";
logic cfg_en;
logic cfg_snoop_en;
logic traffic_started;
integer ace_ac_count;
logic cfg_err_clr;
logic [3:0] cfg_scenario_a;
logic [7:0] cfg_prbs_code;
logic [2:0] cfg_data_mode;
logic [7:0] cfg_burst_len;
logic [7:0] cfg_xcode;
logic [ADDR_W-1:0] cfg_base_addr;
logic [7:0] cfg_snoop_gap;
logic [3:0] cfg_err_inject_b;
integer ace_cd_count;

wire full_coherence_seen = (ace_cd_count > 0) && (cnt_r_pd > 0) &&
                           (cnt_r_is > 0) && (cnt_sn_rs > 0) &&
                           (cnt_sn_mi > 0) && (cnt_sn_ci > 0) &&
                           (cnt_sn_ro > 0);

// Independent APB3 masters for module A and module B. APB runs in ace_clk domain.
logic a_psel, a_penable, a_pwrite;
logic [11:0] a_paddr;
logic [31:0] a_pwdata;
wire [31:0] a_prdata;
wire a_pready, a_pslverr;
logic b_psel, b_penable, b_pwrite;
logic [11:0] b_paddr;
logic [31:0] b_pwdata;
wire [31:0] b_prdata;
wire b_pready, b_pslverr;
logic [31:0] apb_check;
logic [31:0] apb_status_a, apb_status_b;
logic [31:0] apb_cnt_tx_a, apb_cnt_snoop_a;
logic [31:0] apb_cnt_wr_b, apb_cnt_rd_b, apb_cnt_snoop_b;

wire [31:0] a_cnt_tx;
wire [31:0] a_cnt_snoop;
wire a_any_err;
wire a_err_rd_data, a_err_rsp, a_err_wr_prbs;
wire a_err_main_timeout, a_err_snoop_timeout;
wire [15:0] a_main_wait_cnt, a_snoop_wait_cnt;
wire [31:0] b_cnt_wr, b_cnt_rd, b_cnt_snoop;
wire b_any_err;
wire b_err_wr_data, b_err_cd_data, b_err_cr_mismatch;
wire b_err_snoop_timeout, b_err_slave_timeout;
logic tb_done;
logic fifo_x_reported;
logic fifo0_x_reported;
integer fifo_wr_edge_count;
integer fifo_wr_reset_edge_count;

module_a u_ace_master (
    .aclk(ace_clk), .areset_n(ace_rst_n),
    .awvalid(die0.ace_slv2_awvalid), .awready(die0.ace_slv2_awready),
    .awid(die0.ace_slv2_awid), .awaddr(die0.ace_slv2_awaddr),
    .awlen(die0.ace_slv2_awlen), .awsize(die0.ace_slv2_awsize),
    .awburst(die0.ace_slv2_awburst), .awregion(die0.ace_slv2_awregion),
    .awlock(die0.ace_slv2_awlock), .awcache(die0.ace_slv2_awcache),
    .awprot(die0.ace_slv2_awprot), .awqos(die0.ace_slv2_awqos),
    .awsnoop(die0.ace_slv2_awsnoop), .awdomain(die0.ace_slv2_awdomain),
    .awbar(die0.ace_slv2_awbar), .awunique(die0.ace_slv2_awunique),
    .wvalid(die0.ace_slv2_wvalid), .wready(die0.ace_slv2_wready),
    .wdata(die0.ace_slv2_wdata), .wstrb(die0.ace_slv2_wstrb),
    .wlast(die0.ace_slv2_wlast),
    .bvalid(die0.ace_slv2_bvalid), .bready(die0.ace_slv2_bready),
    .bid(die0.ace_slv2_bid), .bresp(die0.ace_slv2_bresp),
    .arvalid(die0.ace_slv2_arvalid), .arready(die0.ace_slv2_arready),
    .arid(die0.ace_slv2_arid), .araddr(die0.ace_slv2_araddr),
    .arlen(die0.ace_slv2_arlen), .arsize(die0.ace_slv2_arsize),
    .arburst(die0.ace_slv2_arburst), .arregion(die0.ace_slv2_arregion),
    .arlock(die0.ace_slv2_arlock), .arcache(die0.ace_slv2_arcache),
    .arprot(die0.ace_slv2_arprot), .arqos(die0.ace_slv2_arqos),
    .arsnoop(die0.ace_slv2_arsnoop), .ardomain(die0.ace_slv2_ardomain),
    .arbar(die0.ace_slv2_arbar),
    .rvalid(die0.ace_slv2_rvalid), .rready(die0.ace_slv2_rready),
    .rid(die0.ace_slv2_rid), .rdata(die0.ace_slv2_rdata),
    .rresp(die0.ace_slv2_rresp), .rlast(die0.ace_slv2_rlast),
    .acvalid(die0.ace_slv2_acvalid), .acready(die0.ace_slv2_acready), .acvid(die0.ace_slv2_acvid),
    .acaddr(die0.ace_slv2_acaddr), .acsnoop(die0.ace_slv2_acsnoop), .acprot(die0.ace_slv2_acprot),
    .crvalid(die0.ace_slv2_crvalid), .crready(die0.ace_slv2_crready), .crresp(die0.ace_slv2_crresp),
    .cdvalid(die0.ace_slv2_cdvalid), .cdready(die0.ace_slv2_cdready),
    .cddata(die0.ace_slv2_cddata), .cdlast(die0.ace_slv2_cdlast),
    .rack(die0.ace_slv2_rack), .wack(die0.ace_slv2_wack),
    .pclk(ace_clk), .presetn(ace_rst_n),
    .psel(a_psel), .penable(a_penable), .pwrite(a_pwrite),
    .paddr(a_paddr), .pwdata(a_pwdata), .prdata(a_prdata),
    .pready(a_pready), .pslverr(a_pslverr),
    .ord_valid(1'b0), .ord_ready(),
    .ord_write(1'b0), .ord_arsnoop(4'b0), .ord_awsnoop(3'b0),
    .ord_awunique(1'b0), .ord_addr({ADDR_W{1'b0}}), .cfg_ord_ext(1'b0)
);

module_b u_ace_slave (
    .aclk(ace_clk), .areset_n(ace_rst_n),
    .awvalid(die1.ace_mst2_awvalid), .awready(die1.ace_mst2_awready),
    .awid(die1.ace_mst2_awid), .awaddr(die1.ace_mst2_awaddr),
    .awlen(die1.ace_mst2_awlen), .awsize(die1.ace_mst2_awsize),
    .awburst(die1.ace_mst2_awburst), .awregion(die1.ace_mst2_awregion),
    .awlock(die1.ace_mst2_awlock), .awcache(die1.ace_mst2_awcache),
    .awprot(die1.ace_mst2_awprot), .awqos(die1.ace_mst2_awqos),
    .awsnoop(die1.ace_mst2_awsnoop), .awdomain(die1.ace_mst2_awdomain),
    .awbar(die1.ace_mst2_awbar), .awunique(die1.ace_mst2_awunique),
    .wvalid(die1.ace_mst2_wvalid), .wready(die1.ace_mst2_wready),
    .wdata(die1.ace_mst2_wdata), .wstrb(die1.ace_mst2_wstrb),
    .wlast(die1.ace_mst2_wlast),
    .bvalid(die1.ace_mst2_bvalid), .bready(die1.ace_mst2_bready),
    .bid(die1.ace_mst2_bid), .bresp(die1.ace_mst2_bresp),
    .arvalid(die1.ace_mst2_arvalid), .arready(die1.ace_mst2_arready),
    .arid(die1.ace_mst2_arid), .araddr(die1.ace_mst2_araddr),
    .arlen(die1.ace_mst2_arlen), .arsize(die1.ace_mst2_arsize),
    .arburst(die1.ace_mst2_arburst), .arregion(die1.ace_mst2_arregion),
    .arlock(die1.ace_mst2_arlock), .arcache(die1.ace_mst2_arcache),
    .arprot(die1.ace_mst2_arprot), .arqos(die1.ace_mst2_arqos),
    .arsnoop(die1.ace_mst2_arsnoop), .ardomain(die1.ace_mst2_ardomain),
    .arbar(die1.ace_mst2_arbar),
    .rvalid(die1.ace_mst2_rvalid), .rready(die1.ace_mst2_rready),
    .rid(die1.ace_mst2_rid), .rdata(die1.ace_mst2_rdata),
    .rresp(die1.ace_mst2_rresp), .rlast(die1.ace_mst2_rlast),
    .acvalid(die1.ace_mst2_acvalid), .acready(die1.ace_mst2_acready), .acvid(die1.ace_mst2_acvid),
    .acaddr(die1.ace_mst2_acaddr), .acsnoop(die1.ace_mst2_acsnoop), .acprot(die1.ace_mst2_acprot),
    .crvalid(die1.ace_mst2_crvalid), .crready(die1.ace_mst2_crready), .crresp(die1.ace_mst2_crresp),
    .cdvalid(die1.ace_mst2_cdvalid), .cdready(die1.ace_mst2_cdready),
    .cddata(die1.ace_mst2_cddata), .cdlast(die1.ace_mst2_cdlast),
    .rack(die1.ace_mst2_rack), .wack(die1.ace_mst2_wack),
    .pclk(ace_clk), .presetn(ace_rst_n),
    .psel(b_psel), .penable(b_penable), .pwrite(b_pwrite),
    .paddr(b_paddr), .pwdata(b_pwdata), .prdata(b_prdata),
    .pready(b_pready), .pslverr(b_pslverr)
);

// Verification observation only. Hardware-visible configuration and status use APB.
assign a_cnt_tx             = u_ace_master.o_cnt_tx;
assign a_cnt_snoop          = u_ace_master.o_cnt_snoop;
assign a_any_err            = u_ace_master.o_any_err;
assign a_err_rd_data        = u_ace_master.err_rd_data;
assign a_err_rsp            = u_ace_master.err_rsp;
assign a_err_wr_prbs        = u_ace_master.err_wr_prbs;
assign a_err_main_timeout   = u_ace_master.err_main_timeout;
assign a_err_snoop_timeout  = u_ace_master.err_snoop_timeout;
assign a_main_wait_cnt      = u_ace_master.o_main_wait_cnt;
assign a_snoop_wait_cnt     = u_ace_master.o_snoop_wait_cnt;
assign b_cnt_wr             = u_ace_slave.o_cnt_wr;
assign b_cnt_rd             = u_ace_slave.o_cnt_rd;
assign b_cnt_snoop          = u_ace_slave.o_cnt_snoop;
assign b_any_err            = u_ace_slave.o_any_err;
assign b_err_wr_data        = u_ace_slave.err_wr_data;
assign b_err_cd_data        = u_ace_slave.err_cd_data;
assign b_err_cr_mismatch    = u_ace_slave.err_cr_mismatch;
assign b_err_snoop_timeout  = u_ace_slave.err_snoop_timeout;
assign b_err_slave_timeout  = u_ace_slave.err_slave_timeout;

always @(posedge ace_clk) begin
    if ($test$plusargs("APB_TRACE") && a_psel)
        $display("APB_A t=%0t enable=%b write=%b addr=%03h wdata=%08h rdata=%08h internal_mode=%0d",
                 $time, a_penable, a_pwrite, a_paddr, a_pwdata, a_prdata,
                 u_ace_master.cfg_data_mode);
    if ($test$plusargs("APB_TRACE") && b_psel)
        $display("APB_B t=%0t enable=%b write=%b addr=%03h wdata=%08h rdata=%08h internal_mode=%0d",
                 $time, b_penable, b_pwrite, b_paddr, b_pwdata, b_prdata,
                 u_ace_slave.cfg_data_mode);
end
`endif

initial begin
    pclk = 1'b0;
    top_pll_800mhz = 1'b0;
    soc_i_pclk = 1'b0;
    ref_clk = 1'b0;
    axi_5_clk = 1'b0;
    ace_clk  = 1'b0;

`ifdef ACE_AGENT_TEST
    cfg_en = 1'b0;
    cfg_snoop_en = 1'b0;
    traffic_started = 1'b0;
    ace_ac_count = 0;
    cfg_err_clr = 1'b0;
    cfg_scenario_a = '0;
    cfg_prbs_code = 8'hA5;
    cfg_data_mode = 3'd0;
    cfg_burst_len = 8'd3;
    cfg_xcode = 8'h5A;
    cfg_base_addr = 44'h2000_0000;
    cfg_snoop_gap = 8'd10;
    cfg_err_inject_b = '0;
    a_psel = 1'b0; a_penable = 1'b0; a_pwrite = 1'b0;
    a_paddr = '0; a_pwdata = '0;
    b_psel = 1'b0; b_penable = 1'b0; b_pwrite = 1'b0;
    b_paddr = '0; b_pwdata = '0;
    if ($value$plusargs("DATA_MODE=%d", cfg_data_mode)) begin end
    if (cfg_data_mode > 3'd5)
        $fatal(1, "DATA_MODE must be 0..5");
    if ($value$plusargs("BURST_BEATS=%d", burst_beats)) begin end
    if ((burst_beats < 2) || (burst_beats > 256))
        $fatal(1, "BURST_BEATS must be 2..256");
    cfg_burst_len = burst_beats - 1;
    if ($value$plusargs("TARGET_TX=%d", target_tx)) begin end
    if ($value$plusargs("TRAFFIC_TIMEOUT_CYC=%d", traffic_timeout_cycles)) begin end
    if (target_tx < 16 || traffic_timeout_cycles < 1)
        $fatal(1, "TARGET_TX must be >=16 and TRAFFIC_TIMEOUT_CYC must be positive");
    tb_done = 1'b0;
    ace_cd_count = 0;
    fifo_x_reported = 1'b0;
    fifo0_x_reported = 1'b0;
    fifo_wr_edge_count = 0;
    fifo_wr_reset_edge_count = 0;
`endif

    presetn = 1'b0;
    soc_i_presetn = 1'b0;
    reset_n = 1'b0;
    axi_5_rst_n = 1'b0;
    ace_rst_n = 1'b0;

    mcu_trst_n = 1'b0;

    #50ns;
    mcu_trst_n = 1'b1;
    
    #950ns;

    presetn = 1'b1;
    soc_i_presetn = 1'b1;
    reset_n = 1'b1;
    axi_5_rst_n = 1'b1;
    ace_rst_n = 1'b1;

end

always begin #2.5ns pclk = ~pclk; end                   // 200MHz
always begin #2.5ns soc_i_pclk = ~soc_i_pclk; end       // 200MHz
always begin #20ns ref_clk = ~ref_clk; end              // 25MHz
always begin #0.5ns axi_5_clk = ~axi_5_clk; end          // 1GHz
always begin #0.5ns ace_clk = ~ace_clk; end         // 1GHz


assign die0.pclk = pclk;         
assign die0.presetn = presetn;
assign die0.top_pll_800mhz = 'b0; 
assign die0.clci_mode_sel = 'b0;  
assign die0.boot_sel = 'b0;       
assign die0.strapping_mode = 'b1; 
assign die0.gpio_in_sideband = 'b0;     
assign die0.chiplet_id = 'b0;
assign die0.i2c_id_vld = 'b0;     
assign die0.i2c_id = 'b0;         
assign die0.mcu_wdt_sim_speed = 'b0;
assign die0.mcu_id = 'b0;               
assign die0.mcu_jtag_id = 'b0;          
assign die0.mcu_tck = 'b0;
assign die0.mcu_tms = 'b0;
assign die0.mcu_tdi = 'b0;
assign die0.mcu_trst_n = 'b0;
assign die0.mcu_uart_rx0 = 1'b1;
assign die0.mcu_uart_rx1 = 1'b1;
assign die0.mcu_scl_in = 'b1;
assign die0.mcu_sda_in = 'b1;
assign die0.soc_i_pclk = soc_i_pclk;
assign die0.soc_i_presetn = soc_i_presetn;
assign die0.soc_i_psel = 'b0;
assign die0.soc_i_penable = 'b0;
assign die0.soc_i_pwrite = 'b0;
assign die0.soc_i_paddr = 'b0;
assign die0.soc_i_pwdata = 'b0;
assign die0.ace_2_rst_n = ace_rst_n;
assign die0.ace_2_clk = ace_clk;
assign die0.ace_mst2_bvalid = 'b0;
assign die0.ace_mst2_bid = 'b0;
assign die0.ace_mst2_bresp = 'b0;
assign die0.ace_mst2_acvalid = 'b0;
assign die0.ace_mst2_acvid = 'b0;
assign die0.ace_mst2_acaddr = 'b0;
assign die0.ace_mst2_acsnoop = 'b0;
assign die0.ace_mst2_acprot = 'b0;
assign die0.ace_mst2_rvalid = 'b0;
assign die0.ace_mst2_rid = 'b0;
assign die0.ace_mst2_rdata = 'b0;
assign die0.ace_mst2_rresp = 'b0;
assign die0.ace_mst2_rlast = 'b0;
assign die0.ace_mst2_awready = 1'b1;
assign die0.ace_mst2_arready = 1'b1;
assign die0.ace_mst2_crready = 1'b1;
assign die0.ace_mst2_wready = 1'b1;
assign die0.ace_mst2_cdready = 1'b1;
assign die0.sideband_dat = 'b0;
assign die0.reset_n = reset_n;  
assign die0.test_mode = 'b0;
assign die0.scan_en = 'b0;
assign die0.scan_clk_20 = 'b0;
assign die0.scan_clk_20_tx = 'b0;
assign die0.scan_clk_20_rx = 'b0;
assign die0.scan_clk_80 = 'b0;
assign die0.ref_clk = ref_clk;
assign die0.syn_pll_in = 'b0;
assign die0.vmon_clci_phy_avdd_st_0     = 'b1;
assign die0.vmon_clci_phy_avdd_st_ck_0  = 'b1;
assign die0.vmon_clci_phy_avss_st_0     = 'b0;
assign die0.vmon_clci_phy_avss_st_ck_0  = 'b0;
assign die0.vmon_clci_phy_avdd_st_1     = 'b1;
assign die0.vmon_clci_phy_avdd_st_ck_1  = 'b1;
assign die0.vmon_clci_phy_avss_st_1     = 'b0;
assign die0.vmon_clci_phy_avss_st_ck_1  = 'b0;
assign die0.EXT_CLK_P = 'b0;
assign die0.EXT_CLK_N = 'b0;


assign die1.pclk = pclk;         
assign die1.presetn = presetn;
assign die1.top_pll_800mhz = 'b0; 
assign die1.clci_mode_sel = 'b0;  
assign die1.boot_sel = 'b0;       
assign die1.strapping_mode = 'b1; 
assign die1.gpio_in_sideband = 'b0;     
assign die1.chiplet_id = 'b0;
assign die1.i2c_id_vld = 'b0;     
assign die1.i2c_id = 'b0;         
assign die1.mcu_wdt_sim_speed = 'b0;
assign die1.mcu_id = 'b0;               
assign die1.mcu_jtag_id = 'b0;          
assign die1.mcu_tck = 'b0;
assign die1.mcu_tms = 'b0;
assign die1.mcu_tdi = 'b0;
assign die1.mcu_trst_n = 'b0;
assign die1.mcu_uart_rx0 = 1'b1;
assign die1.mcu_uart_rx1 = 1'b1;
assign die1.mcu_scl_in = 'b1;
assign die1.mcu_sda_in = 'b1;
assign die1.soc_i_pclk = soc_i_pclk;
assign die1.soc_i_presetn = soc_i_presetn;
assign die1.soc_i_psel = 'b0;
assign die1.soc_i_penable = 'b0;
assign die1.soc_i_pwrite = 'b0;
assign die1.soc_i_paddr = 'b0;
assign die1.soc_i_pwdata = 'b0;
assign die1.ace_2_rst_n = ace_rst_n;
assign die1.ace_2_clk = ace_clk;
assign die1.ace_slv2_awvalid = 'b0;
assign die1.ace_slv2_awid = 'b0;
assign die1.ace_slv2_awaddr = 'b0;
assign die1.ace_slv2_awlen = 'b0;
assign die1.ace_slv2_awsize = 'b0;
assign die1.ace_slv2_awburst = 'b0;
assign die1.ace_slv2_awregion = 'b0;
assign die1.ace_slv2_awlock = 'b0;
assign die1.ace_slv2_awcache = 'b0;
assign die1.ace_slv2_awprot = 'b0;
assign die1.ace_slv2_awqos = 'b0;
assign die1.ace_slv2_awsnoop = 'b0;
assign die1.ace_slv2_awdomain = 'b0;
assign die1.ace_slv2_awbar = 'b0;
assign die1.ace_slv2_awunique = 'b0;
assign die1.ace_slv2_arvalid = 'b0;
assign die1.ace_slv2_arid = 'b0;
assign die1.ace_slv2_araddr = 'b0;
assign die1.ace_slv2_arlen = 'b0;
assign die1.ace_slv2_arsize = 'b0;
assign die1.ace_slv2_arburst = 'b0;
assign die1.ace_slv2_arregion = 'b0;
assign die1.ace_slv2_arlock = 'b0;
assign die1.ace_slv2_arcache = 'b0;
assign die1.ace_slv2_arprot = 'b0;
assign die1.ace_slv2_arqos = 'b0;
assign die1.ace_slv2_arsnoop = 'b0;
assign die1.ace_slv2_ardomain = 'b0;
assign die1.ace_slv2_arbar = 'b0;
assign die1.ace_slv2_crvalid = 'b0;
assign die1.ace_slv2_crresp = 'b0;
assign die1.ace_slv2_wvalid = 'b0;
assign die1.ace_slv2_wdata = 'b0;
assign die1.ace_slv2_wstrb = 'b0;
assign die1.ace_slv2_wlast = 'b0;
assign die1.ace_slv2_cdvalid = 'b0;
assign die1.ace_slv2_cddata = 'b0;
assign die1.ace_slv2_cdlast = 'b0;
assign die1.ace_slv2_wack = 'b0;
assign die1.ace_slv2_rack = 'b0;
assign die1.ace_slv2_bready = 'b0;
assign die1.ace_slv2_acready = 'b0;
assign die1.ace_slv2_rready = 'b0;
assign die1.sideband_dat = 'b0;
assign die1.reset_n = reset_n;  
assign die1.test_mode = 'b0;
assign die1.scan_en = 'b0;
assign die1.scan_clk_20 = 'b0;
assign die1.scan_clk_20_tx = 'b0;
assign die1.scan_clk_20_rx = 'b0;
assign die1.scan_clk_80 = 'b0;
assign die1.ref_clk = ref_clk;
assign die1.syn_pll_in = 'b0;
assign die1.vmon_clci_phy_avdd_st_0     = 'b1;
assign die1.vmon_clci_phy_avdd_st_ck_0  = 'b1;
assign die1.vmon_clci_phy_avss_st_0     = 'b0;
assign die1.vmon_clci_phy_avss_st_ck_0  = 'b0;
assign die1.vmon_clci_phy_avdd_st_1     = 'b1;
assign die1.vmon_clci_phy_avdd_st_ck_1  = 'b1;
assign die1.vmon_clci_phy_avss_st_1     = 'b0;
assign die1.vmon_clci_phy_avss_st_ck_1  = 'b0;
assign die1.EXT_CLK_P = 'b0;
assign die1.EXT_CLK_N = 'b0;


assign die0.RXCKSB      = die1.TXCKSB  ;
assign die0.RXDATASB    = die1.TXDATASB;
assign die0.RX_D        = die1.TX_D    ;
assign die0.RX_VLD      = die1.TX_VLD  ;
assign die0.RX_TRK      = die1.TX_TRK  ;
assign die0.RX_CLK_P    = die1.TX_CLK_P;
assign die0.RX_CLK_N    = die1.TX_CLK_N;

assign die1.RXCKSB      = die0.TXCKSB  ;
assign die1.RXDATASB    = die0.TXDATASB;
assign die1.RX_D        = die0.TX_D    ;
assign die1.RX_VLD      = die0.TX_VLD  ;
assign die1.RX_TRK      = die0.TX_TRK  ;
assign die1.RX_CLK_P    = die0.TX_CLK_P;
assign die1.RX_CLK_N    = die0.TX_CLK_N;

initial begin
    $display("Simulation begin");
end

int timestamp_cnt;
initial begin
    timestamp_cnt = 0;
    forever begin
        #1us;
        timestamp_cnt = timestamp_cnt+1;
        $display("Timestamp %d * 1us", timestamp_cnt);
    end
end

`ifdef ACE_AGENT_TEST
always @(posedge ace_clk)
    if (ace_rst_n) begin
        if (die1.ace_mst2_cdvalid && die1.ace_mst2_cdready)
            ace_cd_count <= ace_cd_count + 1;
        if (die1.ace_mst2_acvalid && die1.ace_mst2_acready)
            ace_ac_count <= ace_ac_count + 1;
    end

always @(posedge ace_clk) begin
    if (ace_rst_n && traffic_started) begin
        if (die0.ace_slv2_awvalid && die0.ace_slv2_awready) begin
            cnt_aw <= cnt_aw + 1;
            source_awlen <= die0.ace_slv2_awlen;
            source_wbeat <= '0;
            source_write_active <= 1'b1;
            if (die0.ace_slv2_awlen == 0) cnt_single_wr <= cnt_single_wr + 1;
            else                          cnt_burst_wr <= cnt_burst_wr + 1;
        end
        if (die0.ace_slv2_wvalid && die0.ace_slv2_wready) begin
            cnt_w_beats <= cnt_w_beats + 1;
            if (!source_write_active)
                fail_test("W beat observed without an active AW transaction");
            if (die0.ace_slv2_wlast !== (source_wbeat == source_awlen))
                fail_test("WLAST position does not match AWLEN");
            if (die0.ace_slv2_wlast) source_write_active <= 1'b0;
            else                     source_wbeat <= source_wbeat + 1'b1;
        end
        if (die0.ace_slv2_arvalid && die0.ace_slv2_arready) begin
            cnt_ar <= cnt_ar + 1;
            source_arlen <= die0.ace_slv2_arlen;
            source_rbeat <= '0;
            source_read_active <= 1'b1;
            if (die0.ace_slv2_arlen == 0) cnt_single_rd <= cnt_single_rd + 1;
            else                          cnt_burst_rd <= cnt_burst_rd + 1;
        end
        if (die0.ace_slv2_rvalid && die0.ace_slv2_rready) begin
            cnt_r_beats <= cnt_r_beats + 1;
            if (!source_read_active)
                fail_test("R beat observed without an active AR transaction");
            if (die0.ace_slv2_rlast !== (source_rbeat == source_arlen))
                fail_test("RLAST position does not match ARLEN");
            if (die0.ace_slv2_rlast) source_read_active <= 1'b0;
            else                     source_rbeat <= source_rbeat + 1'b1;
        end
        if (die1.ace_mst2_acvalid && die1.ace_mst2_acready) begin
            case (die1.ace_mst2_acsnoop)
                ARSNOOP_READ_SHARED: cnt_sn_rs <= cnt_sn_rs + 1;
                ARSNOOP_MAKE_INVALID: cnt_sn_mi <= cnt_sn_mi + 1;
                ARSNOOP_CLEAN_INVALID: cnt_sn_ci <= cnt_sn_ci + 1;
                ARSNOOP_READ_ONCE: cnt_sn_ro <= cnt_sn_ro + 1;
                default: fail_test("Unexpected snoop type");
            endcase
        end
        if (die1.ace_mst2_crvalid && die1.ace_mst2_crready && die1.ace_mst2_crresp[CR_DT])
            cnt_cd_expected <= cnt_cd_expected + 1;
        if (die0.ace_slv2_rvalid && die0.ace_slv2_rready && die0.ace_slv2_rlast) begin
            if (die0.ace_slv2_rresp[RR_PASSDIRTY]) cnt_r_pd <= cnt_r_pd + 1;
            if (die0.ace_slv2_rresp[RR_ISSHARED]) cnt_r_is <= cnt_r_is + 1;
        end
    end
end

always @(posedge ace_clk) begin
    if (traffic_started && !fifo0_x_reported &&
        ((^die0.u_post_mac2201_top_inst.u_async_fifo_port2_pcs_tx_inst0.generic_async_fifo_inst0.probe_wr_ptr) === 1'bx ||
         (^die0.u_post_mac2201_top_inst.u_async_fifo_port2_pcs_tx_inst0.generic_async_fifo_inst0.probe_wr_bin) === 1'bx)) begin
        fifo0_x_reported = 1'b1;
        $display("[FIFO_DIAG_DIE0] t=%0t wr_clk=%b wr_rst_x=%b reset_seen=%b wr_en=%b wr_inc=%b wr_ptr=%b wr_bin=%b",
                 $time,
                 die0.u_post_mac2201_top_inst.u_async_fifo_port2_pcs_tx_inst0.generic_async_fifo_inst0.wr_clk,
                 die0.u_post_mac2201_top_inst.u_async_fifo_port2_pcs_tx_inst0.generic_async_fifo_inst0.wr_rst_x,
                 die0.u_post_mac2201_top_inst.u_async_fifo_port2_pcs_tx_inst0.generic_async_fifo_inst0.Wrt_Rst_x_Asserted,
                 die0.u_post_mac2201_top_inst.u_async_fifo_port2_pcs_tx_inst0.generic_async_fifo_inst0.wr_en,
                 die0.u_post_mac2201_top_inst.u_async_fifo_port2_pcs_tx_inst0.generic_async_fifo_inst0.wr_inc,
                 die0.u_post_mac2201_top_inst.u_async_fifo_port2_pcs_tx_inst0.generic_async_fifo_inst0.probe_wr_ptr,
                 die0.u_post_mac2201_top_inst.u_async_fifo_port2_pcs_tx_inst0.generic_async_fifo_inst0.probe_wr_bin);
    end
    if (traffic_started && !fifo_x_reported &&
        ((^die1.u_post_mac2201_top_inst.u_async_fifo_port2_pcs_tx_inst0.generic_async_fifo_inst0.probe_wr_ptr) === 1'bx ||
         (^die1.u_post_mac2201_top_inst.u_async_fifo_port2_pcs_tx_inst0.generic_async_fifo_inst0.probe_wr_bin) === 1'bx)) begin
        fifo_x_reported = 1'b1;
        $display("[FIFO_DIAG] t=%0t wr_clk=%b wr_rst_x=%b reset_seen=%b wr_edges=%0d reset_edges=%0d wr_en=%b wr_inc=%b wr_ptr=%b wr_bin=%b",
                 $time,
                 die1.u_post_mac2201_top_inst.u_async_fifo_port2_pcs_tx_inst0.generic_async_fifo_inst0.wr_clk,
                 die1.u_post_mac2201_top_inst.u_async_fifo_port2_pcs_tx_inst0.generic_async_fifo_inst0.wr_rst_x,
                 die1.u_post_mac2201_top_inst.u_async_fifo_port2_pcs_tx_inst0.generic_async_fifo_inst0.Wrt_Rst_x_Asserted,
             fifo_wr_edge_count, fifo_wr_reset_edge_count,
             die1.u_post_mac2201_top_inst.u_async_fifo_port2_pcs_tx_inst0.generic_async_fifo_inst0.wr_en,
             die1.u_post_mac2201_top_inst.u_async_fifo_port2_pcs_tx_inst0.generic_async_fifo_inst0.wr_inc,
                 die1.u_post_mac2201_top_inst.u_async_fifo_port2_pcs_tx_inst0.generic_async_fifo_inst0.probe_wr_ptr,
                 die1.u_post_mac2201_top_inst.u_async_fifo_port2_pcs_tx_inst0.generic_async_fifo_inst0.probe_wr_bin);
    end
end

always @(posedge die1.u_post_mac2201_top_inst.u_async_fifo_port2_pcs_tx_inst0.generic_async_fifo_inst0.wr_clk) begin
    fifo_wr_edge_count <= fifo_wr_edge_count + 1;
    if (die1.u_post_mac2201_top_inst.u_async_fifo_port2_pcs_tx_inst0.generic_async_fifo_inst0.wr_rst_x === 1'b0)
        fifo_wr_reset_edge_count <= fifo_wr_reset_edge_count + 1;
end
`endif

// Procedural equivalents of the original lightweight interface assertions.
// Check both ends; do not assume a fixed ACK latency through the link.
wire [15:0] check_valid, check_ready;
wire [511:0] check_payload [0:15];
logic [15:0] check_stalled = '0;
logic [511:0] check_previous [0:15];
// check channel 0: die0.ace_slv2_aw
assign check_valid[0] = die0.ace_slv2_awvalid;
assign check_ready[0] = die0.ace_slv2_awready;
assign check_payload[0] = {die0.ace_slv2_awid, die0.ace_slv2_awaddr, die0.ace_slv2_awlen, die0.ace_slv2_awsize, die0.ace_slv2_awburst, die0.ace_slv2_awregion, die0.ace_slv2_awlock, die0.ace_slv2_awcache, die0.ace_slv2_awprot, die0.ace_slv2_awqos, die0.ace_slv2_awsnoop, die0.ace_slv2_awdomain, die0.ace_slv2_awbar, die0.ace_slv2_awunique};
// check channel 1: die0.ace_slv2_w
assign check_valid[1] = die0.ace_slv2_wvalid;
assign check_ready[1] = die0.ace_slv2_wready;
assign check_payload[1] = {die0.ace_slv2_wdata, die0.ace_slv2_wstrb, die0.ace_slv2_wlast};
// check channel 2: die0.ace_slv2_b
assign check_valid[2] = die0.ace_slv2_bvalid;
assign check_ready[2] = die0.ace_slv2_bready;
assign check_payload[2] = {die0.ace_slv2_bid, die0.ace_slv2_bresp};
// check channel 3: die0.ace_slv2_ar
assign check_valid[3] = die0.ace_slv2_arvalid;
assign check_ready[3] = die0.ace_slv2_arready;
assign check_payload[3] = {die0.ace_slv2_arid, die0.ace_slv2_araddr, die0.ace_slv2_arlen, die0.ace_slv2_arsize, die0.ace_slv2_arburst, die0.ace_slv2_arregion, die0.ace_slv2_arlock, die0.ace_slv2_arcache, die0.ace_slv2_arprot, die0.ace_slv2_arqos, die0.ace_slv2_arsnoop, die0.ace_slv2_ardomain, die0.ace_slv2_arbar};
// check channel 4: die0.ace_slv2_r
assign check_valid[4] = die0.ace_slv2_rvalid;
assign check_ready[4] = die0.ace_slv2_rready;
assign check_payload[4] = {die0.ace_slv2_rid, die0.ace_slv2_rdata, die0.ace_slv2_rresp, die0.ace_slv2_rlast};
// check channel 5: die0.ace_slv2_ac
assign check_valid[5] = die0.ace_slv2_acvalid;
assign check_ready[5] = die0.ace_slv2_acready;
assign check_payload[5] = {die0.ace_slv2_acvid, die0.ace_slv2_acaddr, die0.ace_slv2_acsnoop, die0.ace_slv2_acprot};
// check channel 6: die0.ace_slv2_cr
assign check_valid[6] = die0.ace_slv2_crvalid;
assign check_ready[6] = die0.ace_slv2_crready;
assign check_payload[6] = {die0.ace_slv2_crresp};
// check channel 7: die0.ace_slv2_cd
assign check_valid[7] = die0.ace_slv2_cdvalid;
assign check_ready[7] = die0.ace_slv2_cdready;
assign check_payload[7] = {die0.ace_slv2_cddata, die0.ace_slv2_cdlast};
// check channel 8: die1.ace_mst2_aw
assign check_valid[8] = die1.ace_mst2_awvalid;
assign check_ready[8] = die1.ace_mst2_awready;
assign check_payload[8] = {die1.ace_mst2_awid, die1.ace_mst2_awaddr, die1.ace_mst2_awlen, die1.ace_mst2_awsize, die1.ace_mst2_awburst, die1.ace_mst2_awregion, die1.ace_mst2_awlock, die1.ace_mst2_awcache, die1.ace_mst2_awprot, die1.ace_mst2_awqos, die1.ace_mst2_awsnoop, die1.ace_mst2_awdomain, die1.ace_mst2_awbar, die1.ace_mst2_awunique};
// check channel 9: die1.ace_mst2_w
assign check_valid[9] = die1.ace_mst2_wvalid;
assign check_ready[9] = die1.ace_mst2_wready;
assign check_payload[9] = {die1.ace_mst2_wdata, die1.ace_mst2_wstrb, die1.ace_mst2_wlast};
// check channel 10: die1.ace_mst2_b
assign check_valid[10] = die1.ace_mst2_bvalid;
assign check_ready[10] = die1.ace_mst2_bready;
assign check_payload[10] = {die1.ace_mst2_bid, die1.ace_mst2_bresp};
// check channel 11: die1.ace_mst2_ar
assign check_valid[11] = die1.ace_mst2_arvalid;
assign check_ready[11] = die1.ace_mst2_arready;
assign check_payload[11] = {die1.ace_mst2_arid, die1.ace_mst2_araddr, die1.ace_mst2_arlen, die1.ace_mst2_arsize, die1.ace_mst2_arburst, die1.ace_mst2_arregion, die1.ace_mst2_arlock, die1.ace_mst2_arcache, die1.ace_mst2_arprot, die1.ace_mst2_arqos, die1.ace_mst2_arsnoop, die1.ace_mst2_ardomain, die1.ace_mst2_arbar};
// check channel 12: die1.ace_mst2_r
assign check_valid[12] = die1.ace_mst2_rvalid;
assign check_ready[12] = die1.ace_mst2_rready;
assign check_payload[12] = {die1.ace_mst2_rid, die1.ace_mst2_rdata, die1.ace_mst2_rresp, die1.ace_mst2_rlast};
// check channel 13: die1.ace_mst2_ac
assign check_valid[13] = die1.ace_mst2_acvalid;
assign check_ready[13] = die1.ace_mst2_acready;
assign check_payload[13] = {die1.ace_mst2_acvid, die1.ace_mst2_acaddr, die1.ace_mst2_acsnoop, die1.ace_mst2_acprot};
// check channel 14: die1.ace_mst2_cr
assign check_valid[14] = die1.ace_mst2_crvalid;
assign check_ready[14] = die1.ace_mst2_crready;
assign check_payload[14] = {die1.ace_mst2_crresp};
// check channel 15: die1.ace_mst2_cd
assign check_valid[15] = die1.ace_mst2_cdvalid;
assign check_ready[15] = die1.ace_mst2_cdready;
assign check_payload[15] = {die1.ace_mst2_cddata, die1.ace_mst2_cdlast};
always @(posedge ace_clk) begin
    if (!ace_rst_n || !traffic_started) check_stalled <= '0;
    else if (!tb_done) begin
        for (int i = 0; i < 16; i++) begin
            if ((^{check_valid[i], check_ready[i]}) === 1'bx)
                fail_test($sformatf("Unknown VALID/READY on channel %0d", i));
            if (check_valid[i] && ((^check_payload[i]) === 1'bx))
                fail_test($sformatf("Unknown active payload on channel %0d", i));
            if (check_stalled[i] && ((check_valid[i] !== 1'b1) ||
                (check_payload[i] !== check_previous[i])))
                fail_test($sformatf("VALID/payload changed while stalled on channel %0d", i));
            check_stalled[i] <= check_valid[i] && !check_ready[i];
            check_previous[i] <= check_payload[i];
        end
        if (die0.ace_slv2_bvalid && (die0.ace_slv2_bresp !== 2'b00))
            fail_test("BRESP is not OKAY");
        if (die0.ace_slv2_rvalid && ((die0.ace_slv2_rresp[1:0] !== 2'b00) ||
            (die0.ace_slv2_rresp[RR_PASSDIRTY] && die0.ace_slv2_rresp[RR_ISSHARED])))
            fail_test("Invalid RRESP");
        if (die0.ace_slv2_cdvalid && !die0.ace_slv2_cdlast)
            fail_test("Expected single-beat CD");
        if (die0.ace_slv2_crvalid) begin
            case (die0.ace_slv2_crresp)
                5'b00000, 5'b01000, 5'b10000, 5'b11000, 5'b10101: begin end
                default: fail_test("CRRESP outside module response set");
            endcase
        end
        if (die1.ace_mst2_bvalid && (die1.ace_mst2_bresp !== 2'b00))
            fail_test("BRESP is not OKAY");
        if (die1.ace_mst2_rvalid && ((die1.ace_mst2_rresp[1:0] !== 2'b00) ||
            (die1.ace_mst2_rresp[RR_PASSDIRTY] && die1.ace_mst2_rresp[RR_ISSHARED])))
            fail_test("Invalid RRESP");
        if (die1.ace_mst2_cdvalid && !die1.ace_mst2_cdlast)
            fail_test("Expected single-beat CD");
        if (die1.ace_mst2_crvalid) begin
            case (die1.ace_mst2_crresp)
                5'b00000, 5'b01000, 5'b10000, 5'b11000, 5'b10101: begin end
                default: fail_test("CRRESP outside module response set");
            endcase
        end
    end
end

task automatic fail_test(input string reason);
    $display("TB_FAIL: %s t=%0t", reason, $time);
    $display("ACE progress: tx=%0d wr=%0d rd=%0d AC=%0d A_CR=%0d B_snoop=%0d CD=%0d",
             a_cnt_tx, b_cnt_wr, b_cnt_rd, ace_ac_count,
             a_cnt_snoop, b_cnt_snoop, ace_cd_count);
    $display("ACE coverage: RS=%0d MI=%0d CI=%0d RO=%0d PD=%0d IS=%0d",
             cnt_sn_rs, cnt_sn_mi, cnt_sn_ci, cnt_sn_ro, cnt_r_pd, cnt_r_is);
    $display("ACE transaction classes: SW=%0d SR=%0d BW=%0d BR=%0d",
             cnt_single_wr, cnt_single_rd, cnt_burst_wr, cnt_burst_rd);
    $display("ACE beats: W=%0d R=%0d write_active=%b read_active=%b",
             cnt_w_beats, cnt_r_beats, source_write_active, source_read_active);
    $display("ACE scheduler: phase=%s A_en=%b B_en=%b A_st=%0d A_sn=%0d B_st=%0d B_hs=%0d",
             test_phase, cfg_en, cfg_snoop_en, u_ace_master.st, u_ace_master.sn,
             u_ace_slave.st, u_ace_slave.hs);
    $display("ACE home gate: eligible=%b aw_pend=%b ar_pend=%b scan_hit=%b gap=%0d rack=%b wack=%b AW=%b AR=%b",
             u_ace_slave.snoop_eligible, u_ace_slave.aw_pend, u_ace_slave.ar_pend,
             u_ace_slave.scan_hit, u_ace_slave.gap_cnt,
             die1.ace_mst2_rack, die1.ace_mst2_wack,
             die1.ace_mst2_awvalid, die1.ace_mst2_arvalid);
    $display("ACE A: rd=%b rsp=%b wrprbs=%b main_to=%b snoop_to=%b wait=%0d/%0d",
             a_err_rd_data, a_err_rsp, a_err_wr_prbs,
             a_err_main_timeout, a_err_snoop_timeout, a_main_wait_cnt, a_snoop_wait_cnt);
    $display("ACE B: wr=%b cd=%b cr=%b snoop_to=%b slave_to=%b",
             b_err_wr_data, b_err_cd_data, b_err_cr_mismatch,
             b_err_snoop_timeout, b_err_slave_timeout);
    $display("ACE die0 valid/ready: AW=%b/%b W=%b/%b B=%b/%b AR=%b/%b R=%b/%b",
             die0.ace_slv2_awvalid, die0.ace_slv2_awready,
             die0.ace_slv2_wvalid, die0.ace_slv2_wready,
             die0.ace_slv2_bvalid, die0.ace_slv2_bready,
             die0.ace_slv2_arvalid, die0.ace_slv2_arready,
             die0.ace_slv2_rvalid, die0.ace_slv2_rready);
    $display("ACE die1 valid/ready: AC=%b/%b CR=%b/%b CD=%b/%b",
             die1.ace_mst2_acvalid, die1.ace_mst2_acready,
             die1.ace_mst2_crvalid, die1.ace_mst2_crready,
             die1.ace_mst2_cdvalid, die1.ace_mst2_cdready);
    $display("LINK: die0=%b/%b die1=%b/%b",
             die0.u_st_s_reg_inst0.rx_link_status,
             die0.u_st_s_reg_inst0.pcs_mac_tx_ready_enable,
             die1.u_st_s_reg_inst0.rx_link_status,
             die1.u_st_s_reg_inst0.pcs_mac_tx_ready_enable);
    $display("RESULT: FAIL");
    $fatal(1, "%s", reason);
endtask

task automatic apb_a_write(input logic [11:0] addr,
                           input logic [31:0] data);
    @(negedge ace_clk);
    a_psel = 1'b1; a_penable = 1'b0; a_pwrite = 1'b1;
    a_paddr = addr; a_pwdata = data;
    @(negedge ace_clk);
    a_penable = 1'b1;
    @(posedge ace_clk); #1ps;
    if ((a_pready !== 1'b1) || (a_pslverr !== 1'b0))
        fail_test($sformatf("Module A APB write failed at 0x%03h", addr));
    @(negedge ace_clk);
    a_psel = 1'b0; a_penable = 1'b0; a_pwrite = 1'b0;
endtask

task automatic apb_b_write(input logic [11:0] addr,
                           input logic [31:0] data);
    @(negedge ace_clk);
    b_psel = 1'b1; b_penable = 1'b0; b_pwrite = 1'b1;
    b_paddr = addr; b_pwdata = data;
    @(negedge ace_clk);
    b_penable = 1'b1;
    @(posedge ace_clk); #1ps;
    if ((b_pready !== 1'b1) || (b_pslverr !== 1'b0))
        fail_test($sformatf("Module B APB write failed at 0x%03h", addr));
    @(negedge ace_clk);
    b_psel = 1'b0; b_penable = 1'b0; b_pwrite = 1'b0;
endtask

task automatic apb_a_read(input logic [11:0] addr,
                          output logic [31:0] data);
    @(negedge ace_clk);
    a_psel = 1'b1; a_penable = 1'b0; a_pwrite = 1'b0;
    a_paddr = addr;
    @(negedge ace_clk);
    a_penable = 1'b1;
    @(posedge ace_clk); #1ps;
    data = a_prdata;
    if ((a_pready !== 1'b1) || (a_pslverr !== 1'b0))
        fail_test($sformatf("Module A APB read failed at 0x%03h", addr));
    @(negedge ace_clk);
    a_psel = 1'b0; a_penable = 1'b0;
endtask

task automatic apb_b_read(input logic [11:0] addr,
                          output logic [31:0] data);
    @(negedge ace_clk);
    b_psel = 1'b1; b_penable = 1'b0; b_pwrite = 1'b0;
    b_paddr = addr;
    @(negedge ace_clk);
    b_penable = 1'b1;
    @(posedge ace_clk); #1ps;
    data = b_prdata;
    if ((b_pready !== 1'b1) || (b_pslverr !== 1'b0))
        fail_test($sformatf("Module B APB read failed at 0x%03h", addr));
    @(negedge ace_clk);
    b_psel = 1'b0; b_penable = 1'b0;
endtask

task automatic set_a_enable(input logic enable);
    apb_a_write(12'h000, {31'b0, enable});
    cfg_en = enable;
endtask

task automatic set_b_enable(input logic enable);
    apb_b_write(12'h000, {31'b0, enable});
    cfg_snoop_en = enable;
endtask

// Monitor until the final verdict, including the drain/settling interval.
always @(negedge ace_clk) begin
    if (traffic_started && !tb_done) begin
        if ((a_any_err !== 1'b0) || (b_any_err !== 1'b0))
            fail_test("ACE agent error or unknown error flag");
        if ((die0.u_st_s_reg_inst0.rx_link_status !== 2'h3) ||
            (die1.u_st_s_reg_inst0.rx_link_status !== 2'h3) ||
            (die0.u_st_s_reg_inst0.pcs_mac_tx_ready_enable !== 1'b1) ||
            (die1.u_st_s_reg_inst0.pcs_mac_tx_ready_enable !== 1'b1))
            fail_test("Link lost during ACE traffic");
    end
end

initial begin
    // Require all four conditions simultaneously, not four historical observations.
    wait ((die0.u_st_s_reg_inst0.rx_link_status === 2'h3) &&
          (die1.u_st_s_reg_inst0.rx_link_status === 2'h3) &&
          (die0.u_st_s_reg_inst0.pcs_mac_tx_ready_enable === 1'b1) &&
          (die1.u_st_s_reg_inst0.pcs_mac_tx_ready_enable === 1'b1));
    repeat (8) @(negedge ace_clk);
    $display("Two die link ready; APB will run each module A test type separately");
    traffic_started = 1'b1;
    // Program both agents only through their hardware-visible APB registers.
    apb_a_write(12'h004, {4'b0, cfg_scenario_a, cfg_xcode, 5'b0,
                          cfg_data_mode, cfg_prbs_code});
    apb_a_read(12'h004, apb_check);
    if ((apb_check[27:24] !== cfg_scenario_a) ||
        (apb_check[10:8] !== cfg_data_mode) ||
        (apb_check[7:0] !== cfg_prbs_code))
        fail_test($sformatf(
            "Module A APB DATA_CFG mismatch: read=0x%08h scenario=%0d mode=%0d code=0x%02h; expected scenario=%0d mode=%0d code=0x%02h",
            apb_check, apb_check[27:24], apb_check[10:8], apb_check[7:0],
            cfg_scenario_a, cfg_data_mode, cfg_prbs_code));
    apb_a_write(12'h008, cfg_base_addr[31:0]);
    apb_a_write(12'h00c, {20'b0, cfg_base_addr[43:32]});
    apb_a_write(12'h020, {24'b0, cfg_burst_len});
    apb_a_read(12'h020, apb_check);
    if (apb_check[7:0] !== cfg_burst_len)
        fail_test($sformatf(
            "Module A APB BURST_CFG mismatch: read LEN=%0d expected LEN=%0d",
            apb_check[7:0], cfg_burst_len));
    apb_b_write(12'h004, {8'b0, cfg_xcode, 5'b0,
                          cfg_data_mode, cfg_prbs_code});
    apb_b_read(12'h004, apb_check);
    if ((apb_check[10:8] !== cfg_data_mode) ||
        (apb_check[7:0] !== cfg_prbs_code))
        fail_test($sformatf(
            "Module B APB DATA_CFG mismatch: read=0x%08h mode=%0d code=0x%02h; expected mode=%0d code=0x%02h",
            apb_check, apb_check[10:8], apb_check[7:0],
            cfg_data_mode, cfg_prbs_code));
    apb_b_write(12'h008, {20'b0, cfg_err_inject_b, cfg_snoop_gap});
    // Keep A's original internal pattern/address counters. Issue one generated
    // transaction group per window, then allow B's original home generator to run.
    // Across a buffered link, A cannot see B's local snoop eligibility immediately;
    // free-running both generators can starve snoops or overlap stale directory state.
    while ((a_cnt_tx < target_tx) || !full_coherence_seen ||
           (cnt_single_wr == 0) || (cnt_single_rd == 0) ||
           (cnt_burst_wr == 0) || (cnt_burst_rd == 0)) begin
        // Select exactly one internal transaction class through APB for this
        // phase. The next phase selects the next class; type 0 auto-rotation
        // is intentionally not used by this testbench.
        cfg_scenario_a = test_type_next[3:0];
        apb_a_write(12'h004, {4'b0, cfg_scenario_a, cfg_xcode, 5'b0,
                              cfg_data_mode, cfg_prbs_code});
        apb_a_read(12'h004, apb_check);
        if (apb_check[27:24] !== cfg_scenario_a)
            fail_test("Module A APB test-type readback mismatch");
        prev_single_wr = cnt_single_wr;
        prev_single_rd = cnt_single_rd;
        prev_burst_wr  = cnt_burst_wr;
        prev_burst_rd  = cnt_burst_rd;
        $display("ACE APB test phase: type=%0d", cfg_scenario_a);
        // Preserve a primary read + the module's pending ReadShared reread
        // as one group. Snooping between these reads would invalidate the
        // directory entry and suppress the intended IsShared response.
        do begin
            test_phase = "main issue";
            set_b_enable(1'b0);
            set_a_enable(1'b1);
            wait (u_ace_master.st != u_ace_master.M_IDLE);
            set_a_enable(1'b0); // Accepted work completes; no next order starts.
            test_phase = "main drain";
            wait ((u_ace_master.st == u_ace_master.M_IDLE) &&
                  (u_ace_slave.st == u_ace_slave.B_IDLE) &&
                  (a_cnt_tx == cnt_aw + cnt_ar) &&
                  (b_cnt_wr == cnt_aw) && (b_cnt_rd == cnt_ar) &&
                  !u_ace_slave.aw_pend && !u_ace_slave.ar_pend);
            @(negedge ace_clk);
        end while (u_ace_master.re_rd === 1'b1);
        case (cfg_scenario_a)
            4'd1: if ((cnt_single_wr <= prev_single_wr) ||
                      (cnt_single_rd != prev_single_rd) ||
                      (cnt_burst_wr  != prev_burst_wr)  ||
                      (cnt_burst_rd  != prev_burst_rd))
                      fail_test("APB type 1 did not produce only Single Write");
            4'd2: if ((cnt_single_rd <= prev_single_rd) ||
                      (cnt_single_wr != prev_single_wr) ||
                      (cnt_burst_wr  != prev_burst_wr)  ||
                      (cnt_burst_rd  != prev_burst_rd))
                      fail_test("APB type 2 did not produce only Single Read");
            4'd3: if ((cnt_burst_wr <= prev_burst_wr) ||
                      (cnt_single_wr != prev_single_wr) ||
                      (cnt_single_rd != prev_single_rd) ||
                      (cnt_burst_rd  != prev_burst_rd))
                      fail_test("APB type 3 did not produce only Burst Write");
            4'd4: if ((cnt_burst_rd <= prev_burst_rd) ||
                      (cnt_single_wr != prev_single_wr) ||
                      (cnt_single_rd != prev_single_rd) ||
                      (cnt_burst_wr  != prev_burst_wr))
                      fail_test("APB type 4 did not produce only Burst Read");
            default: fail_test("Unexpected APB test type in scheduler");
        endcase
        // ACK-driven directory updates have settled before enabling the home node.
        test_phase = "snoop window";
        set_b_enable(1'b1);
        // Clean entries may need more than one snoop before invalidation.
        // Let B rotate naturally until its directory and all response paths drain.
        wait ((u_ace_slave.scan_hit === 1'b0) &&
              ((u_ace_slave.hs == u_ace_slave.H_IDLE) ||
               (u_ace_slave.hs == u_ace_slave.H_GAP)) &&
              (u_ace_master.sn == u_ace_master.S_IDLE) &&
              (a_cnt_snoop == ace_ac_count) && (b_cnt_snoop == ace_ac_count) &&
              (ace_cd_count == cnt_cd_expected));
        set_b_enable(1'b0);
        test_type_next = (test_type_next == 4) ? 1 : test_type_next + 1;
    end
    test_phase = "final drain";

    // cfg_en stops new work only. A/B must finish work already accepted,
    // including requests still buffered in the two-die link.
    wait ((u_ace_master.st == u_ace_master.M_IDLE) &&
          (u_ace_master.sn == u_ace_master.S_IDLE) &&
          (u_ace_slave.st == u_ace_slave.B_IDLE) &&
          ((u_ace_slave.hs == u_ace_slave.H_IDLE) ||
           (u_ace_slave.hs == u_ace_slave.H_GAP)) &&
          (a_cnt_tx == cnt_aw + cnt_ar) &&
          (b_cnt_wr == cnt_aw) && (b_cnt_rd == cnt_ar) &&
          (a_cnt_snoop == ace_ac_count) && (b_cnt_snoop == ace_ac_count) &&
          (ace_cd_count == cnt_cd_expected));
    repeat (32) @(negedge ace_clk);
    // Hardware/software result path: read status and counters through APB.
    apb_a_read(12'h010, apb_status_a);
    apb_b_read(12'h010, apb_status_b);
    apb_a_read(12'h014, apb_cnt_tx_a);
    apb_a_read(12'h018, apb_cnt_snoop_a);
    apb_b_read(12'h014, apb_cnt_wr_b);
    apb_b_read(12'h018, apb_cnt_rd_b);
    apb_b_read(12'h01c, apb_cnt_snoop_b);
    if ((apb_status_a[5] !== 1'b0) || (apb_status_b[5] !== 1'b0) ||
        (apb_cnt_tx_a < target_tx) || (apb_cnt_wr_b == 0) ||
        (apb_cnt_rd_b == 0) || (b_cnt_snoop == 0) ||
        !full_coherence_seen ||
        (cnt_single_wr == 0) || (cnt_single_rd == 0) ||
        (cnt_burst_wr == 0) || (cnt_burst_rd == 0) ||
        source_write_active || source_read_active ||
        (cnt_w_beats != (cnt_single_wr + burst_beats*cnt_burst_wr)) ||
        (cnt_r_beats != (cnt_single_rd + burst_beats*cnt_burst_rd)) ||
        (apb_cnt_tx_a !== cnt_aw + cnt_ar) ||
        (apb_cnt_wr_b !== cnt_aw) || (apb_cnt_rd_b !== cnt_ar) ||
        (apb_cnt_snoop_a !== ace_ac_count) ||
        (apb_cnt_snoop_b !== ace_ac_count) ||
        (ace_cd_count !== cnt_cd_expected))
        fail_test("Final module traffic counts or error checks failed");
    tb_done = 1'b1;
    $display("ACE summary: mode=%0d burst_beats=%0d target=%0d tx=%0d wr=%0d rd=%0d snoop=%0d CD=%0d",
             cfg_data_mode, burst_beats, target_tx, apb_cnt_tx_a, apb_cnt_wr_b,
             apb_cnt_rd_b, apb_cnt_snoop_b, ace_cd_count);
    $display("ACE coverage: snoop RS=%0d MI=%0d CI=%0d RO=%0d; RRESP PD=%0d IS=%0d",
             cnt_sn_rs, cnt_sn_mi, cnt_sn_ci, cnt_sn_ro, cnt_r_pd, cnt_r_is);
    $display("ACE transactions: Single Write=%0d Single Read=%0d Burst Write=%0d Burst Read=%0d",
             cnt_single_wr, cnt_single_rd, cnt_burst_wr, cnt_burst_rd);
    $display("ACE beats: W=%0d R=%0d", cnt_w_beats, cnt_r_beats);
    $display("TB_PASS: module A/B internal traffic through the two-die link, drained without errors");
    $display("RESULT: PASS");
    $finish;
end

// Bound the traffic phase independently of firmware boot time.
initial begin
    wait (traffic_started);
    repeat (traffic_timeout_cycles) @(posedge ace_clk);
    if (!tb_done) fail_test("ACE traffic/coverage/drain watchdog");
end

// One global watchdog and one failure path; no competing $finish at the same deadline.
initial begin
    #500us;
    if (!tb_done)
        fail_test("500us watchdog: link, ACE transaction, or drain timeout");
end

endmodule
