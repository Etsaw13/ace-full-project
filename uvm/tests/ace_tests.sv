// =====================================================================
// ace_tests.sv - 测试用例 (独立 UVM 环境; 各 test 只负责"启动剧本+收尾等待")
//   ace_smoke_test   : 剧本 ace_write_read_seq —— 逐行 写(WU)→读(RS)→独占读(RU)
//                      数据面地基回归; RU 确定性制造 UD 行 (覆盖 S_CD/H_WAIT_CD)
//   ace_snoop_test   : 剧本 ace_snoop_seq —— 三轮读 (RS 铺行/RS 重读/RU 重读)
//                      两条 P2 闭环 (共享 IsShared + 脏行 CD) 的确定性演练
//   ace_random_test  : 剧本 ace_random_seq —— 随机合法订单流, 覆盖收敛用
//   判定: report_phase 数 UVM_ERROR/FATAL, 双 0 → TEST_PASS
//   调用: bash uvm/sim/run_uvm_vcs.sh <test 名> [码型 0..3]
// =====================================================================
import uvm_pkg::*;
`include "uvm_macros.svh"
import ace_pkg::*;
import ace_uvm_pkg::*;

class ace_base_test extends uvm_test;

  `uvm_component_utils(ace_base_test)

  ace_env env;

  function new(string name = "ace_base_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    env = ace_env::type_id::create("env", this);
  endfunction

  function void report_phase(uvm_phase phase);
    uvm_report_server rs;                      // 声明在函数开头 (VCS 要求)
    super.report_phase(phase);
    rs = uvm_report_server::get_server();
    if (rs.get_severity_count(UVM_ERROR) == 0 && rs.get_severity_count(UVM_FATAL) == 0)
      `uvm_info(get_type_name(), "*** TEST_PASS ***", UVM_LOW)
    else
      `uvm_info(get_type_name(), "*** TEST_FAIL ***", UVM_LOW)
  endfunction

endclass


// ---------------------------------------------------------------------
// ace_smoke_test: 数据面地基回归 (每次 RTL 改动后的第一反应)
//   剧本 ace_write_read_seq: 每行 W(WU)→R(RS)→R(RU), 4 行共 12 笔
//   RU 制造 UD 行 → home 出 CleanInvalid → CD 回流, 尾部等待供其收尾
// ---------------------------------------------------------------------
class ace_smoke_test extends ace_base_test;

  `uvm_component_utils(ace_smoke_test)

  function new(string name = "ace_smoke_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  task run_phase(uvm_phase phase);
    ace_write_read_seq seq;
    phase.raise_objection(this);
    seq = ace_write_read_seq::type_id::create("seq");
    seq.start(env.agent.sqr);
    // 留时间让 home 对最后几行 (含 RU 制造的 UD 行) 完成质询与 CD 收货
    repeat (500) @(posedge env.agent.drv.vif.aclk);
    phase.drop_objection(this);
  endtask

endclass


// ---------------------------------------------------------------------
// ace_snoop_test: 一致性闭环演练 (改 cache 状态机/决策表/home 后重点跑)
//   剧本 ace_snoop_seq 三轮读: RS 铺行 → RS 重读(共享闭环) → RU 重读(脏行闭环)
// ---------------------------------------------------------------------
class ace_snoop_test extends ace_base_test;

  `uvm_component_utils(ace_snoop_test)

  function new(string name = "ace_snoop_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  task run_phase(uvm_phase phase);
    ace_snoop_seq seq;
    phase.raise_objection(this);
    seq = ace_snoop_seq::type_id::create("seq");
    seq.start(env.agent.sqr);
    // 留时间让 home 完成对最后几行的质询与 CD 收货
    repeat (500) @(posedge env.agent.drv.vif.aclk);
    phase.drop_objection(this);
  endtask

endclass


// ---------------------------------------------------------------------
// ace_random_test: 随机交错压力 + 覆盖收敛 (回归必跑, 多轮多 seed)
//   剧本 ace_random_seq: 50 笔随机合法订单 (读写 3:7, 属性/地址随机)
// ---------------------------------------------------------------------
class ace_random_test extends ace_base_test;

  `uvm_component_utils(ace_random_test)

  function new(string name = "ace_random_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  task run_phase(uvm_phase phase);
    ace_random_seq seq;
    phase.raise_objection(this);
    seq = ace_random_seq::type_id::create("seq");
    seq.start(env.agent.sqr);
    // 留时间让 home 完成对最后几行的质询与 CD 收货
    repeat (500) @(posedge env.agent.drv.vif.aclk);
    phase.drop_objection(this);
  endtask

endclass
