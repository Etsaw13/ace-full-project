LSF=bsub -Is -R "rusage[mem=5000]" -q highspeed

# --------------------------------------------------------------------------------
#  RTL , behav aphy
# --------------------------------------------------------------------------------
comp:
	$(LSF) vcs \
		-sverilog \
	   	-full64 \
		-ntb_opts uvm-1.2 \
		-timescale=1ns/1ps \
		-F $(CLCI_RELEASE_ANCHOR)/dv/flist/flist_behav_aphy.f \
	    -F $(CLCI_RELEASE_ANCHOR)/fe/compile_rtl_only_env/design.flist.f \
		-F $(CLCI_RELEASE_ANCHOR)/dv/flist/flist_dv.f \
		-top test_top \
        -kdb \
		-debug_access+all\
        +lint=TFIPC-L \
		-debug_region=lib+cell+encrypt \
		+nospecify +notimingcheck\
	   	-P ${VERDI_HOME}/share/PLI/VCS/LINUX64/verdi.tab ${VERDI_HOME}/share/PLI/VCS/LINUX64/pli.a \
	   	-l comp.log


verdi:
	$(LSF) verdi \
		-dbdir ./simv.daidir &
clr:
	rm -rf comp.log xrun* xcelium.d comp.history flex*.log sim.log novas_dump.log waves.shm verdiLog nWaveLog novas.rc novas.conf \
		simv.daidir simv.vdb csrc simv ucli.key vc_hdrs.h debussy_000.fsdb debussy.log debussy.vf core.* tr_db.log simv* \
		u_clci_apb_env.apb_master_agent.monitor.transaction_trace xml_dump.log \
		u_clci_apb_env_0.apb_master_agent.monitor.transaction_trace u_clci_apb_env_1.apb_master_agent.monitor.transaction_trace \
		sdfAnnotateInfo debussy_000.fsdb*
all:clr comp
