#!/bin/bash
# =====================================================================
# run_local.sh - 本地 iverilog 运行脚本 (ace-full-project, P3-1 码型矩阵版)
# 用法: bash sim/run_local.sh            # 跑全部 6 个码型 (DATA_MODE=0..5)
#       bash sim/run_local.sh 2 8        # 指定码型，并使用8拍Burst
# 要求: iverilog >= v12 (支持 package/enum/always_ff)
# 说明: -D IVERILOG 关闭 SVA 断言 (iverilog 不支持并发断言)
#       mode 为运行期常量 (一次仿真一个码型) —— 中途切换会使 B 内存中的
#       旧码型数据与 A 的新期望值失配, 产生假报错, 故用矩阵而非运行中切换
# =====================================================================
cd "$(dirname "$0")/.."

set -o pipefail   # 管道退出码 = 真实编译结果 (防止 tee 吞掉错误码)

echo "=== iverilog 版本 ==="
iverilog -V 2>/dev/null | head -1 || { echo "ERROR: 未安装 iverilog"; exit 1; }

echo "=== [1/2] 编译 ==="
rm -f sim/iverilog.vvp                              # 先删旧仿真包, 防止陈旧文件骗过检查
if ! iverilog -g2012 -I rtl -D IVERILOG -s tb_direct \
    -o sim/iverilog.vvp \
    rtl/ace_pkg.sv rtl/module_a.sv rtl/module_b.sv tb/tb_direct.sv \
    2>&1 | tee sim/compile_local.log; then
    echo "=== COMPILE FAIL (错误见上方 / sim/compile_local.log) ==="
    exit 1
fi

echo "=== [2/2] 仿真 (P3-1 码型矩阵) ==="
if [ $# -ge 1 ]; then MODES="$1"; else MODES="0 1 2 3 4 5"; fi
BURST_BEATS=${2:-4}
PASS_LIST=""; FAIL_LIST=""
for m in $MODES; do
    echo "--- DATA_MODE=$m BURST_BEATS=$BURST_BEATS ---"
    vvp sim/iverilog.vvp +DATA_MODE=$m +BURST_BEATS=$BURST_BEATS | tee sim/run_local_mode$m.log
    if grep -q "TB_PASS" sim/run_local_mode$m.log; then
        PASS_LIST="$PASS_LIST $m"
    else
        FAIL_LIST="$FAIL_LIST $m"
    fi
    echo ""
done

echo "=== 结果判定 ==="
echo "PASS 码型:$PASS_LIST"
if [ -n "$FAIL_LIST" ]; then
    echo "FAIL 码型:$FAIL_LIST"
    echo "=== SMOKE FAIL (部分码型未过, 见 sim/run_local_mode*.log) ==="
    exit 1
fi
echo "=== SMOKE PASS (iverilog, 全部码型) ==="
