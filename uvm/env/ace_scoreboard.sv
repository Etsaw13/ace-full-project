// =====================================================================
// ace_scoreboard.sv - 记分板
//   · 统计订单/质询完成数 (来自 monitor 分析端口)
//   · 独立盯 DUT 错误标志 (双保险: monitor 报错 + check_phase 终判)
//   · check_phase 终判: 有订单完成且两侧零错误 → PASS
// =====================================================================
`uvm_analysis_imp_decl(_ord)
`uvm_analysis_imp_decl(_snoop)

class ace_scoreboard extends uvm_scoreboard;

  `uvm_component_utils(ace_scoreboard)

  uvm_analysis_imp_ord  #(ace_order_item, ace_scoreboard) ord_imp;
  uvm_analysis_imp_snoop#(ace_snoop_item, ace_scoreboard) snoop_imp;

  virtual ace_if vif;

  int n_ord, n_snoop, n_err;

  function new(string name = "ace_scoreboard", uvm_component parent = null);
    super.new(name, parent);
    ord_imp   = new("ord_imp",   this);
    snoop_imp = new("snoop_imp", this);
  endfunction

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    if (!uvm_config_db#(virtual ace_if)::get(this, "", "vif", vif))
      `uvm_fatal("NOVIF", "ace_scoreboard: ace_if 未通过 config_db 设置")
  endfunction

  function void write_ord(ace_order_item it);
    n_ord++;
  endfunction

  function void write_snoop(ace_snoop_item it);
    n_snoop++;
  endfunction

  task run_phase(uvm_phase phase);
    forever begin
      @(posedge vif.aclk);
      if (vif.any_err_a || vif.any_err_b) n_err++;
    end
  endtask

  function void check_phase(uvm_phase phase);
    int ch;
    super.check_phase(phase);
    `uvm_info("SB_SUMMARY", $sformatf(
      "scoreboard: n_ord=%0d n_snoop=%0d n_err=%0d", n_ord, n_snoop, n_err),
      UVM_LOW)
    if (n_ord == 0)
      `uvm_error("SB_CHECK", "没有任何订单被接受 (n_ord=0)")
    if (!vif.expect_timeout) begin
      for (ch=0; ch<10; ch++) begin
        if (vif.link_in_cnt[ch] != vif.link_out_cnt[ch])
          `uvm_error("LINK_COUNT", $sformatf(
            "通道%0d输入/输出数量不一致: in=%0d out=%0d",
            ch, vif.link_in_cnt[ch], vif.link_out_cnt[ch]))
      end
    end
    if (vif.expect_timeout) begin
      if (!(vif.err_main_timeout_a || vif.err_snoop_timeout_a ||
            vif.err_slave_timeout_b || vif.err_snoop_timeout_b))
        `uvm_error("SB_CHECK", "预期timeout测试未观察到timeout")
      else if (vif.err_rd_data_a || vif.err_rsp_a || vif.err_wr_prbs_a ||
               vif.err_wr_data_b || vif.err_cd_data_b || vif.err_cr_mismatch_b)
        `uvm_error("SB_CHECK", $sformatf(
          "timeout测试同时出现非预期功能错误: A(rd/rsp/prbs)=%b/%b/%b B(wr/cd/cr)=%b/%b/%b",
          vif.err_rd_data_a, vif.err_rsp_a, vif.err_wr_prbs_a,
          vif.err_wr_data_b, vif.err_cd_data_b, vif.err_cr_mismatch_b))
      else
        `uvm_info("SB_CHECK", "scoreboard 判定: EXPECTED TIMEOUT PASS", UVM_LOW)
    end else if (n_err != 0)
      `uvm_error("SB_CHECK", $sformatf("DUT 错误标志置位过 (%0d 拍)", n_err))
    if (n_ord > 0 && n_err == 0 && !vif.expect_timeout)
      `uvm_info("SB_CHECK", "scoreboard 判定: PASS", UVM_LOW)
  endfunction

endclass
