// =====================================================================
// ace_driver.sv - 外部订单驱动器
// 逐条把订单摆到 ord_* 接口上, 等 ord_ready 握手 (引擎忙时自动反压)
// =====================================================================
class ace_driver extends uvm_driver #(ace_order_item);

  `uvm_component_utils(ace_driver)

  virtual ace_if vif;

  function new(string name = "ace_driver", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    if (!uvm_config_db#(virtual ace_if)::get(this, "", "vif", vif))
      `uvm_fatal("NOVIF", "ace_driver: ace_if 未通过 config_db 设置")
  endfunction

  task run_phase(uvm_phase phase);
    vif.ord_valid <= 1'b0;
    vif.ord_write <= 1'b0;
    forever begin
      seq_item_port.get_next_item(req);
      drive_one(req);
      seq_item_port.item_done();
    end
  endtask

  // 驱动一笔订单: 摆字段 → 等 ord_ready 握手 → 撤 valid
  task drive_one(ace_order_item it);
    @(posedge vif.aclk);
    vif.ord_write    <= it.write;
    vif.ord_arsnoop  <= it.arsnoop;
    vif.ord_awsnoop  <= it.awsnoop;
    vif.ord_awunique <= it.awunique;
    vif.ord_addr     <= it.addr;
    vif.ord_valid    <= 1'b1;
    do @(posedge vif.aclk);
    while (!vif.ord_ready);
    vif.ord_valid    <= 1'b0;
  endtask

endclass
