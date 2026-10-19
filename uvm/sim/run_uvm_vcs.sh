#!/bin/bash
# =====================================================================
# run_uvm_vcs.sh - 服务器 VCS + UVM 仿真脚本
# 用法: cd ace-full-project && bash uvm/sim/run_uvm_vcs.sh [testname]
#   testname 缺省 ace_smoke_test; 可选 ace_snoop_test / ace_random_test
# 依赖: VCS + UVM 许可; 若 UVM 版本非 1.2 请改下方 UVM_OPT
# =====================================================================
set -e
cd "$(dirname "$0")/../.."

TEST=${1:-ace_smoke_test}
DMODE=${2:-0}                     # 0=PRBS31 1=全同字节 2=序列号 3=走1 4=PRBS23 5=PRBS10
LINK_MASK=${3:-001}               # 链路通道mask: AW=001 ... WACK=200
UVM_OPT="-ntb_opts uvm-1.2"       # 若环境是 uvm-1.1d 请相应修改

echo "=== [1/2] VCS+UVM 编译 ($TEST, DATA_MODE=$DMODE) ==="
vcs -full64 -sverilog -timescale=1ns/1ps $UVM_OPT +vcs+lic+wait \
    -f uvm/sim/filelist_uvm.f -o sim/simv_uvm -l sim/compile_uvm.log

echo "=== [2/2] 仿真 ==="
./sim/simv_uvm +UVM_TESTNAME=$TEST +DATA_MODE=$DMODE +LINK_DELAY_MASK=$LINK_MASK -l sim/run_uvm.log

echo "=== 结果判定 ==="
# 判据: 测试自报 TEST_PASS (其内含 UVM_ERROR 计数为 0 的判定) 且无 UVM_FATAL
if grep -q "TEST_PASS" sim/run_uvm.log && ! grep -q "TEST_FAIL" sim/run_uvm.log; then
    echo "=== UVM $TEST PASS ==="
    exit 0
else
    echo "=== UVM $TEST FAIL (详见 sim/run_uvm.log) ==="
    grep -E "UVM_ERROR|UVM_FATAL" sim/run_uvm.log | head -20 || true
    exit 1
fi
