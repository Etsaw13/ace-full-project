// =====================================================================
// ace_snoop_item.sv - 质询应答观测事务 (monitor → scoreboard/coverage)
// =====================================================================
class ace_snoop_item extends uvm_sequence_item;

  bit [3:0]           acsnoop;   // home 发的质询类型
  bit [CRRESP_W-1:0]  crresp;    // A 回的应答

  `uvm_object_utils_begin(ace_snoop_item)
    `uvm_field_int (acsnoop, UVM_ALL_ON)
    `uvm_field_int (crresp,  UVM_ALL_ON)
  `uvm_object_utils_end

  function new(string name = "ace_snoop_item");
    super.new(name);
  endfunction

endclass
