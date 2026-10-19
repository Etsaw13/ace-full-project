LSF=bsub -Is -R "rusage[mem=5000]" -q highspeed 
SIM_DIR ?= ../build.rtl_behav_aphy_behavioral
FSDB    ?= debussy.vf
sim:
	$(LSF) $(SIM_DIR)/simv \
		-ucli -do $(CLCI_RELEASE_ANCHOR)/dv/tcl/dump_vcs.tcl \
		+fifo_init_pattern_sel=1 \
        +UVM_TIMEOUT=1000_000 \
		-l sim.log

verdi:
	$(LSF) verdi \
		-dbdir $(SIM_DIR)/simv.daidir \
		-ssf $(FSDB) &		
clr:
	rm -rf comp.log xrun* xcelium.d comp.history flex*.log sim.log novas_dump.log waves.shm verdiLog nWaveLog novas.rc novas.conf \
		simv.daidir simv.vdb csrc simv ucli.key vc_hdrs.h debussy_000.fsdb debussy.log debussy.vf core.* tr_db.log simv* \
		u_clci_apb_env.apb_master_agent.monitor.transaction_trace xml_dump.log *.log \
		u_clci_apb_env_0.apb_master_agent.monitor.transaction_trace u_clci_apb_env_1.apb_master_agent.monitor.transaction_trace \
		sdfAnnotateInfo debussy_000.fsdb*
all:clr sim
