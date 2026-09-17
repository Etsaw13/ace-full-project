# ace-full-project 仿真 Makefile (服务器 VCS)
# 用法:  make run        编译+仿真+判定
#        make waves      带波形编译+仿真
#        make rerun      不重编译, 直接重跑 simv
#        make clean      清理产物

VCS = vcs -full64 -sverilog -timescale=1ns/1ps +vcs+lic+wait
FLIST = -f sim/filelist.f

run: sim/simv
	./sim/simv -l sim/run.log
	@grep -q "TB_PASS" sim/run.log && echo "=== SMOKE PASS ===" \
		|| { echo "=== SMOKE FAIL ==="; exit 1; }

waves:
	$(VCS) +define+WAVES $(FLIST) -o sim/simv -l sim/compile.log
	./sim/simv -l sim/run.log

sim/simv: $(wildcard rtl/*.sv) tb/tb_direct.sv
	$(VCS) $(FLIST) -o sim/simv -l sim/compile.log

rerun:
	./sim/simv -l sim/run.log
	@grep -q "TB_PASS" sim/run.log && echo "=== SMOKE PASS ===" \
		|| { echo "=== SMOKE FAIL ==="; exit 1; }

clean:
	rm -rf sim/simv* sim/csrc sim/*.log sim/*.vcd sim/ucli.key vc_hdrs.h

.PHONY: run waves rerun clean
