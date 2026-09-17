// =====================================================================
// ace_env.sv - UVM 环境 (agent + scoreboard + coverage)
// =====================================================================
class ace_env extends uvm_env;

  `uvm_component_utils(ace_env)

  ace_agent     agent;
  ace_scoreboard sb;
  ace_coverage  cov;

  function new(string name = "ace_env", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    agent = ace_agent::type_id::create("agent", this);
    sb    = ace_scoreboard::type_id::create("sb", this);
    cov   = ace_coverage::type_id::create("cov", this);
  endfunction

  function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    agent.mon.ord_ap.connect(sb.ord_imp);
    agent.mon.snoop_ap.connect(sb.snoop_imp);
    agent.mon.ord_ap.connect(cov.ord_imp);
    agent.mon.snoop_ap.connect(cov.analysis_export);   // uvm_subscriber 标准接法
  endfunction

endclass
