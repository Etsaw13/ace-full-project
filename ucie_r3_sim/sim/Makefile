# CLCI two-die ACE simulation (VCS, UVM 1.2).
#
#   make comp                                  compile once into build/
#   make sim [ROM=dv|rtl|<file.rom.v>]         run the two-die link case, result in run_<name>/work/sim.log
#            [WAVE=1] [NAME=<run name>] [SIM_ARGS="+max_slip_num=3 ..."]
#            WAVE=1 dumps the whole test_top to run_<name>/work/debussy_*.fsdb (dv/tcl/dump_vcs.tcl, needs Verdi)
#   make clean
#
# ROM: dv  = fw/TS3N7LVTA4096X64M16BZO.rom.v   (DV firmware image, default)
#      rtl = fw/TS3N28HPCPA4096X64M16MBS.rom.v (firmware image integrated in the RTL)
# rom_4096x64 loads "../src_all/rom_dat/TS3N28HPCPA4096X64M16MBS.rom.v" relative to the cwd, so each
# run dir provides that path as a symlink to the selected image; one build serves every ROM.
#
# vcs must be on PATH; otherwise pass EDA_SETUP=<script that sets up VCS>.
# LSF="bsub -Is ..." prefixes compile and simulation with a job submission command.

SHELL     := /bin/bash
ROOT      := $(abspath $(CURDIR)/..)
BUILD     := $(CURDIR)/build
EDA_SETUP ?=
LSF       ?=
ROM       ?= dv
WAVE      ?= 0
SIM_ARGS  ?=

ifeq ($(ROM),dv)
  ROM_FILE := $(ROOT)/fw/TS3N7LVTA4096X64M16BZO.rom.v
else ifeq ($(ROM),rtl)
  ROM_FILE := $(ROOT)/fw/TS3N28HPCPA4096X64M16MBS.rom.v
else
  ROM_FILE := $(abspath $(ROM))
endif
NAME := $(if $(filter dv rtl,$(ROM)),$(ROM),$(basename $(basename $(notdir $(ROM)))))
RUN  := $(CURDIR)/run_$(NAME)
UCLI := $(if $(filter 1,$(WAVE)),-ucli -do $(ROOT)/dv/tcl/dump_vcs.tcl)

ENV := export LC_ALL=C CLCI_RELEASE_ANCHOR=$(ROOT); $(if $(EDA_SETUP),source $(EDA_SETUP) >/dev/null 2>&1;)

.PHONY: comp sim clean help
help:
	@sed -n '2,16p' Makefile

comp:
	@mkdir -p $(BUILD)
	@cd $(BUILD) && $(ENV) \
	sed "s#\.\./src_all#$(ROOT)/src_all#" $(ROOT)/src_all/flist.f > design.flist.f && \
	$(LSF) vcs -sverilog -full64 -j8 -ntb_opts uvm-1.2 -timescale=1ns/1ps \
	  -F design.flist.f -F $(ROOT)/dv/flist/flist_dv.f \
	  -top test_top -debug_access+all $${VERDI_HOME:+-kdb} +lint=TFIPC-L +nospecify +notimingcheck \
	  -l comp.log >/dev/null; \
	rc=$$?; echo "comp rc=$$rc  log: $(BUILD)/comp.log"; \
	[ $$rc -eq 0 ] || { grep -E '^Error' -A8 comp.log | head -60; exit $$rc; }

# A fresh log is required: a failed launch must never reuse a previous PASS.
sim:
	@[ -x "$(BUILD)/simv" ] || { echo "no $(BUILD)/simv, run 'make comp' first"; exit 1; }
	@[ -f "$(ROM_FILE)" ] || { echo "ROM image not found: $(ROM_FILE)"; exit 1; }
	@case "$(WAVE)" in 0|1) ;; *) echo "WAVE must be 0 or 1"; exit 1;; esac
	@if [ "$(WAVE)" = 1 ]; then \
	  [ -f "$(ROOT)/dv/tcl/dump_vcs.tcl" ] || { echo "wave script not found: $(ROOT)/dv/tcl/dump_vcs.tcl"; exit 1; }; \
	fi
	@mkdir -p "$(RUN)/src_all/rom_dat" "$(RUN)/work"
	@ln -sfn "$(ROM_FILE)" "$(RUN)/src_all/rom_dat/TS3N28HPCPA4096X64M16MBS.rom.v"
	@echo "ROM: $(ROM_FILE)  WAVE=$(WAVE)"; echo "log: $(RUN)/work/sim.log"
	@cd "$(RUN)/work" && { \
	  : > sim.log; \
	  export LC_ALL=C CLCI_RELEASE_ANCHOR="$(ROOT)"; \
	  if [ -n "$(EDA_SETUP)" ]; then \
	    source "$(EDA_SETUP)" > setup.log 2>&1 || { echo "EDA setup failed; see $(RUN)/work/setup.log"; exit 1; }; \
	  fi; \
	  sim_rc=0; \
	  $(LSF) "$(BUILD)/simv" $(UCLI) \
	    +fifo_init_pattern_sel=1 +UVM_TIMEOUT=1000_000 \
	    $(SIM_ARGS) -l sim.log > launcher.log 2>&1 || sim_rc=$$?; \
	  error_pattern='^(Error|Fatal|FATAL)(:|-|\[)|(^|[[:space:]])ERROR(:|[[:space:]])|TB_FAIL|RESULT: FAIL|^UVM_(ERROR|FATAL)[[:space:]]+@|^UVM_(ERROR|FATAL)[[:space:]]*:[[:space:]]*[1-9]'; \
	  if [ "$$sim_rc" -eq 0 ] \
	    && grep -q '^RESULT: PASS[[:space:]]*$$' sim.log \
	    && ! grep -qE "$$error_pattern" sim.log; then \
	    echo "RESULT: PASS"; \
	  else \
	    grep -nE -A 12 "$$error_pattern" sim.log | head -60; \
	    echo "RESULT: FAIL (sim exit=$$sim_rc)"; \
	    echo "logs: $(RUN)/work/sim.log and $(RUN)/work/launcher.log"; \
	    tail -10 launcher.log; \
	    exit 1; \
	  fi; \
	}

clean:
	rm -rf $(BUILD) $(CURDIR)/run_*
