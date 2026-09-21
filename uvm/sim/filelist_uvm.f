// ACE 协议层激励模块 - UVM 验证文件列表 (VCS: -f uvm/sim/filelist_uvm.f)
// 注意顺序: package 必须先于 tb_top (VCS 单遍解析)
+incdir+rtl
+incdir+uvm/tb
+incdir+uvm/env
+incdir+uvm/seq
+incdir+uvm/tests
rtl/ace_pkg.sv
rtl/link/ace_ucie_link_model.sv
rtl/module_a.sv
rtl/module_b.sv
uvm/tb/ace_if.sv
uvm/env/ace_uvm_pkg.sv
uvm/tb/tb_uvm_top.sv
uvm/tests/ace_tests.sv
