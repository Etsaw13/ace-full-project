#!/bin/bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
P="$(cd "$SCRIPT_DIR/.." && pwd)"
W="$(cd "$P/.." && pwd)"
DESIGNWARE_HOME="${DESIGNWARE_HOME:-/home/tangyc/snps/dw_vip}"

VIP_ROOT="$W/vip_ab"
TB="$VIP_ROOT/examples/sverilog/amba_svt/tb_axi_svt_uvm_basic_active_passive_sys"
SRC="$SCRIPT_DIR"
RUNNER="$TB/run_axi_svt_uvm_basic_active_passive_sys"
TEST=${1:-ace_smoke_test}
DMODE=${2:-0}                     # 0=PRBS31 1=全同字节 2=序列号 3=走1 4=PRBS23 5=PRBS10
LOG="$P/passive_vip_mode${DMODE}.log"

cd "$W"

# Create the Synopsys example only on the first run.
if [ ! -d "$TB" ]; then
  "$DESIGNWARE_HOME/bin/dw_vip_setup" \
    -path "$VIP_ROOT" \
    -e amba_svt/tb_axi_svt_uvm_basic_active_passive_sys \
    -svtb
fi

mkdir -p "$TB/_bak"

if [ -d "$TB/env" ] && [ ! -e "$TB/_bak/env_orig" ]; then
  mv "$TB/env" "$TB/_bak/env_orig"
fi

if [ -d "$TB/tests" ] && [ ! -e "$TB/_bak/tests_orig" ]; then
  mv "$TB/tests" "$TB/_bak/tests_orig"
fi

mkdir -p "$TB/env" "$TB/tests"
cp -f "$SRC/top.sv" "$TB/top.sv"
cp -f "$SRC/top_test.sv" "$TB/top_test.sv"
cp -f "$SRC"/env/*.sv "$TB/env/"
cp -f "$SRC/tests/ts.base_test.sv" "$TB/tests/"

bash "$SRC/gen_dut_f.sh"

printf '%s\n' \
  "+define+PASSIVE_VIP +define+SVT_AXI_EXCLUDE_ICN_VIP +define+UVM_DISABLE_AUTO_ITEM_RECORDING +define+DATA_MODE=$DMODE -timescale=1ns/1ps -f $SRC/dut_ab.f" \
  > "$TB/vcs_build_options"

if [ ! -x "$RUNNER" ]; then
  echo "ERROR: VIP run script not found: $RUNNER" >&2
  exit 1
fi

echo "Workspace : $W"
echo "Project   : $P"
echo "VIP TB    : $TB"
echo "Data mode : $DMODE"
echo "Log       : $LOG"

cd "$TB"
"$RUNNER" "$TEST" vcsvlog 2>&1 | tee "$LOG"

if grep -q "TEST_PASS: UVM + PASSIVE VIP" "$LOG" &&
   grep -q "scoreboard 判定: PASS" "$LOG" &&
   grep -q "UVM_ERROR :[[:space:]]*0" "$LOG" &&
   grep -q "UVM_FATAL :[[:space:]]*0" "$LOG"; then
  echo "PASSIVE_VIP_TEST_PASS"
else
  echo "PASSIVE_VIP_TEST_FAIL: inspect $LOG" >&2
  exit 1
fi
