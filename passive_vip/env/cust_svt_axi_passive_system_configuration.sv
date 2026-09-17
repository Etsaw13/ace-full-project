`ifndef GUARD_AB_PASSIVE_CONFIGURATION_SV
`define GUARD_AB_PASSIVE_CONFIGURATION_SV
class cust_svt_axi_passive_system_configuration extends svt_axi_system_configuration;
  `uvm_object_utils(cust_svt_axi_passive_system_configuration)
  function new(string name="cust_svt_axi_passive_system_configuration");
    super.new(name);
    this.num_masters = 1;
    this.num_slaves  = 0;
    this.create_sub_cfgs(1, 0);
    this.use_interconnect = 0;
    this.system_monitor_enable = 0;
    this.display_summary_report = 1;
    this.master_cfg[0].is_active = 0;
    this.master_cfg[0].axi_interface_type = svt_axi_port_configuration::AXI_ACE;
    this.master_cfg[0].protocol_checks_enable = 1;
    // U-2023.03 limits AXI_ACE IDs to 8 bits. The RTL bus remains 16 bits;
    // Module A currently emits only IDs 1 and 2, so the passive tap uses [7:0].
    this.master_cfg[0].id_width = 8;
    this.master_cfg[0].addr_width = 44;
    this.master_cfg[0].data_width = 128;
    this.master_cfg[0].snoop_data_width = 128;
    this.master_cfg[0].cache_line_size = 16;
    this.master_cfg[0].num_outstanding_xact = 20;
    this.master_cfg[0].transaction_coverage_enable = 1;
    this.master_cfg[0].enable_xml_gen = 0;
  endfunction
endclass
`endif
