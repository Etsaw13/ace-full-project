#!/bin/bash
# =====================================================================
# run_vcs.sh - 服务器 VCS 编译 + 仿真脚本 (ace-full-project, P3-1 码型版)
# 用法: cd ace-full-project && bash sim/run_vcs.sh [data_mode]
#       data_mode: 0=PRBS(默认) 1=全同字节 2=序列号 3=走1
# 产物: sim/compile.log, sim/run_mode<N>.log, sim/simv
# =====================================================================
set -e
cd "$(dirname "$0")/.."

DMODE=${1:-0}
VCS_OPTS="-full64 -sverilog -timescale=1ns/1ps +vcs+lic+wait"
# 需要波形时取消下一行注释 (生成 sim/tb_direct.vcd):
# VCS_OPTS="$VCS_OPTS +define+WAVES"

echo "=== [1/2] VCS 编译 (DATA_MODE=$DMODE) ==="
vcs $VCS_OPTS -f sim/filelist.f -o sim/simv -l sim/compile.log

echo "=== [2/2] 仿真 (DATA_MODE=$DMODE) ==="
./sim/simv +DATA_MODE=$DMODE -l sim/run_mode$DMODE.log

echo "=== 结果判定 (DATA_MODE=$DMODE) ==="
if grep -q "TB_PASS" sim/run_mode$DMODE.log; then
    echo "=== SMOKE PASS (data_mode=$DMODE) ==="
    exit 0
else
    echo "=== SMOKE FAIL (data_mode=$DMODE, 详见 sim/run_mode$DMODE.log) ==="
    grep -E "TB\] ERROR|Error|FAIL" sim/run_mode$DMODE.log | head -20 || true
    exit 1
fi
