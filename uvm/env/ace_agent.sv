// =====================================================================
// ace_agent.sv - 外部订单 agent (sequencer + driver + monitor)
// =====================================================================
class ace_agent extends uvm_agent;

  `uvm_component_utils(ace_agent)

  ace_sequencer        sqr;
  ace_driver           drv;
  ace_monitor          mon;

  function new(string name = "ace_agent", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    mon = ace_monitor::type_id::create("mon", this);
    if (get_is_active() == UVM_ACTIVE) begin
      sqr = ace_sequencer::type_id::create("sqr", this);
      drv = ace_driver::type_id::create("drv", this);
    end
  endfunction

  function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    if (get_is_active() == UVM_ACTIVE)
      drv.seq_item_port.connect(sqr.seq_item_export);
  endfunction

endclass
