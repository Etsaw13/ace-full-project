#!/bin/bash
set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
OUT="$SCRIPT_DIR/dut_ab.f"
{
  echo "+incdir+$ROOT/rtl"
  echo "+incdir+$ROOT/uvm/tb"
  echo "+incdir+$ROOT/uvm/env"
  echo "+incdir+$ROOT/uvm/seq"
  echo "$ROOT/rtl/ace_pkg.sv"
  echo "$ROOT/rtl/module_a.sv"
  echo "$ROOT/rtl/module_b.sv"
  echo "$ROOT/uvm/tb/ace_if.sv"
  echo "$ROOT/uvm/env/ace_uvm_pkg.sv"
  echo "$ROOT/uvm/tb/tb_uvm_top.sv"
} > "$OUT"
echo "wrote $OUT"
