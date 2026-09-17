// =====================================================================
// ace_uvm_pkg.sv - UVM 环境包 (include 各组件文件)
// =====================================================================
`ifndef ACE_UVM_PKG_SV
`define ACE_UVM_PKG_SV

package ace_uvm_pkg;

  import uvm_pkg::*;
  `include "uvm_macros.svh"
  import ace_pkg::*;

  `include "ace_order_item.sv"
  `include "ace_snoop_item.sv"

  typedef uvm_sequencer #(ace_order_item) ace_sequencer;

  `include "ace_driver.sv"
  `include "ace_monitor.sv"
  `include "ace_agent.sv"
  `include "ace_scoreboard.sv"
  `include "ace_coverage.sv"
  `include "ace_sequences.sv"
  `include "ace_env.sv"

endpackage

`endif
