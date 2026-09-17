// Custom UVM functional environment plus Synopsys passive ACE VIP.
class ace_vip_base_test extends uvm_test;
  `uvm_component_utils(ace_vip_base_test)
  ace_env func_env;
  svt_axi_system_env vip_env;
  cust_svt_axi_passive_system_configuration vip_cfg;

  function new(string name="ace_vip_base_test",uvm_component parent=null);
    super.new(name,parent);
  endfunction
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    func_env=ace_env::type_id::create("func_env",this);
    vip_cfg=cust_svt_axi_passive_system_configuration::type_id::create("vip_cfg");
    uvm_config_db#(svt_axi_system_configuration)::set(this,"vip_env","cfg",vip_cfg);
    vip_env=svt_axi_system_env::type_id::create("vip_env",this);
  endfunction
  function void report_phase(uvm_phase phase);
    uvm_report_server rs;
    super.report_phase(phase);
    rs=uvm_report_server::get_server();
    if (rs.get_severity_count(UVM_ERROR)==0 && rs.get_severity_count(UVM_FATAL)==0)
      `uvm_info(get_type_name(),"*** TEST_PASS: UVM + PASSIVE VIP ***",UVM_LOW)
    else
      `uvm_info(get_type_name(),"*** TEST_FAIL: UVM + PASSIVE VIP ***",UVM_LOW)
  endfunction
endclass

class ace_smoke_test extends ace_vip_base_test;
  `uvm_component_utils(ace_smoke_test)
  function new(string name="ace_smoke_test",uvm_component parent=null); super.new(name,parent); endfunction
  task run_phase(uvm_phase phase);
    ace_write_read_seq seq;
    phase.raise_objection(this);
    seq=ace_write_read_seq::type_id::create("seq");
    seq.start(func_env.agent.sqr);
    repeat(100) @(posedge func_env.agent.drv.vif.aclk);
    phase.drop_objection(this);
  endtask
endclass

class ace_snoop_test extends ace_vip_base_test;
  `uvm_component_utils(ace_snoop_test)
  function new(string name="ace_snoop_test",uvm_component parent=null); super.new(name,parent); endfunction
  task run_phase(uvm_phase phase);
    ace_snoop_seq seq;
    phase.raise_objection(this);
    seq=ace_snoop_seq::type_id::create("seq");
    seq.start(func_env.agent.sqr);
    repeat(500) @(posedge func_env.agent.drv.vif.aclk);
    phase.drop_objection(this);
  endtask
endclass

class ace_random_test extends ace_vip_base_test;
  `uvm_component_utils(ace_random_test)
  function new(string name="ace_random_test",uvm_component parent=null); super.new(name,parent); endfunction
  task run_phase(uvm_phase phase);
    ace_random_seq seq;
    phase.raise_objection(this);
    seq=ace_random_seq::type_id::create("seq");
    seq.start(func_env.agent.sqr);
    repeat(500) @(posedge func_env.agent.drv.vif.aclk);
    phase.drop_objection(this);
  endtask
endclass
