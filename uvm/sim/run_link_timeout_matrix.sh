#!/bin/bash
set -e
cd "$(dirname "$0")/../.."
# RACK/WACK为单拍完成通知，不建立等待状态；timeout矩阵覆盖其余握手通道。
for mask in 001 002 004 008 010 020 040 080; do
  echo "=== ace_link_timeout_test mask=$mask ==="
  bash uvm/sim/run_uvm_vcs.sh ace_link_timeout_test 0 "$mask"
done
echo "=== LINK TIMEOUT MATRIX PASS ==="
