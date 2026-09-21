#!/bin/bash
set -e
cd "$(dirname "$0")/../.."
for mask in 001 002 004 008 010 020 040 080 100 200; do
  echo "=== ace_link_delay_test mask=$mask ==="
  bash uvm/sim/run_uvm_vcs.sh ace_link_delay_test 0 "$mask"
done
echo "=== LINK DELAY MATRIX PASS ==="
