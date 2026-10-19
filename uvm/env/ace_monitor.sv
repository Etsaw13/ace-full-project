// =====================================================================
// ace_monitor.sv - 被动观测
//   ① 订单被引擎接受 (ord 握手)     → ord_ap
//   ② 质询应答完成 (cr 握手)        → snoop_ap
//   ③ DUT 错误标志置位              → 直接报 UVM_ERROR
// =====================================================================
class ace_monitor extends uvm_monitor;

  `uvm_component_utils(ace_monitor)

  virtual ace_if vif;
  uvm_analysis_port #(ace_order_item) ord_ap;
  uvm_analysis_port #(ace_snoop_item) snoop_ap;

  function new(string name = "ace_monitor", uvm_component parent = null);
    super.new(name, parent);
    ord_ap   = new("ord_ap", this);
    snoop_ap = new("snoop_ap", this);
  endfunction

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    if (!uvm_config_db#(virtual ace_if)::get(this, "", "vif", vif))
      `uvm_fatal("NOVIF", "ace_monitor: ace_if 未通过 config_db 设置")
  endfunction

  task run_phase(uvm_phase phase);
    bit err_reported_a = 0, err_reported_b = 0;
    forever begin
      @(posedge vif.aclk);
      // ① 订单被引擎接受
      if (vif.ord_valid && vif.ord_ready) begin
        ace_order_item it = ace_order_item::type_id::create("it");
        it.write    = vif.ord_write;
        it.addr     = vif.ord_addr;
        it.arsnoop  = vif.ord_arsnoop;
        it.awsnoop  = vif.ord_awsnoop;
        it.awunique = vif.ord_awunique;
        ord_ap.write(it);
      end
      // ② 质询应答完成
      if (vif.crvalid && vif.crready) begin
        ace_snoop_item sit = ace_snoop_item::type_id::create("sit");
        sit.acsnoop = vif.acsnoop;
        sit.crresp  = vif.crresp;
        snoop_ap.write(sit);
      end
      // ③ DUT 错误标志 (锁存式, 每侧只报一次)
      if (vif.any_err_a && !err_reported_a) begin
        err_reported_a = 1;
        if (vif.expect_timeout &&
            (vif.err_main_timeout_a || vif.err_snoop_timeout_a) &&
            !vif.err_rd_data_a && !vif.err_rsp_a && !vif.err_wr_prbs_a)
          `uvm_info("EXPECTED_TIMEOUT", $sformatf(
          {"观察到预期Module A timeout: main=%b snoop=%b ",
           "state(A/sn/B/home)=%0d/%0d/%0d/%0d wait=%0d/%0d/%0d/%0d pending=%010b"},
          vif.err_main_timeout_a, vif.err_snoop_timeout_a,
          vif.st_a, vif.sn_a, vif.st_b, vif.hs_b,
          vif.main_wait_cnt_a, vif.snoop_wait_cnt_a,
          vif.slave_wait_cnt_b, vif.home_wait_cnt_b, vif.channel_pending), UVM_LOW)
        else
          `uvm_error("DUT_A_ERR", $sformatf(
          {"Module A 错误: rd=%b rsp=%b wrprbs=%b main_to=%b snoop_to=%b ",
           "state(A/sn/B/home)=%0d/%0d/%0d/%0d wait(A/sn/B/home)=%0d/%0d/%0d/%0d delay=%010b pending=%010b"},
          vif.err_rd_data_a, vif.err_rsp_a, vif.err_wr_prbs_a,
          vif.err_main_timeout_a, vif.err_snoop_timeout_a,
          vif.st_a, vif.sn_a, vif.st_b, vif.hs_b,
          vif.main_wait_cnt_a, vif.snoop_wait_cnt_a,
          vif.slave_wait_cnt_b, vif.home_wait_cnt_b,
          vif.channel_delay_active, vif.channel_pending))
      end
      if (vif.any_err_b && !err_reported_b) begin
        err_reported_b = 1;
        if (vif.expect_timeout &&
            (vif.err_snoop_timeout_b || vif.err_slave_timeout_b) &&
            !vif.err_wr_data_b && !vif.err_cd_data_b && !vif.err_cr_mismatch_b)
          `uvm_info("EXPECTED_TIMEOUT", "观察到预期Module B timeout", UVM_LOW)
        else
          `uvm_error("DUT_B_ERR", $sformatf(
          "Module B 错误: wr=%b cd=%b cr=%b snoop_to=%b slave_to=%b",
          vif.err_wr_data_b, vif.err_cd_data_b, vif.err_cr_mismatch_b,
          vif.err_snoop_timeout_b, vif.err_slave_timeout_b))
      end
    end
  endtask

endclass
