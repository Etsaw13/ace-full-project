module clci_init_mem();
   `ifndef BEHAVIORAL 
   initial begin
        #10ns;       
        $deposit (u_clci_mcu_subsys_inst.u_sram_32KB.u_sr1hd4096x64m8b2w1_inst.Q_int, 'b0);
        $deposit (u_post_mac2201_top_inst.rx_flow_ctrl_fifo_port4_pcs_rx_inst0.u_cl2100_sync_fifo_inst0.SRAM_128x306.u_sdpram_128x306_inst0.sram_128x72_inst[0].u_rf2hd128x72m2w0_inst.QA_int, 'b0);
        $deposit (u_post_mac2201_top_inst.rx_flow_ctrl_fifo_port5_pcs_rx_inst0.u_cl2100_sync_fifo_inst0.SRAM_128x306.u_sdpram_128x306_inst0.sram_128x72_inst[0].u_rf2hd128x72m2w0_inst.QA_int, 'b0);
        $deposit (u_post_mac2201_top_inst.rx_flow_ctrl_fifo_port6_pcs_rx_inst0.u_cl2100_sync_fifo_inst0.SRAM_128x306.u_sdpram_128x306_inst0.sram_128x72_inst[0].u_rf2hd128x72m2w0_inst.QA_int, 'b0);
        $deposit (u_mac_wrapper_inst.u_clci_ace_wrapper_inst0.u_axi4_rx.b_fifo.SRAM_256x18.u_sdpram_256x18_inst0.u_rf2hd256x30m2w0_inst.QA_int, 'b0);
        $deposit (u_mac_wrapper_inst.u_clci_ace_wrapper_inst0.u_axi4_rx.rd_fifo.SRAM_256x542.u_sdpram_256x542_inst0.sram_256x30_inst[0].u_rf2hd256x30m2w0_inst.QA_int, 'b0);
        $deposit (u_mac_wrapper_inst.u_clci_ace_wrapper_inst0.u_axi4_rx.wd_fifo.SRAM_256x577.u_sdpram_256x577_inst0.sram_256x30_inst[0].u_rf2hd256x30m2w0_inst.QA_int, 'b0);
        $deposit (u_mac_wrapper_inst.u_clci_ace_wrapper_inst0.u_axi4_rx.wd_fifo.SRAM_256x577.u_sdpram_256x577_inst0.sram_256x30_inst[1].u_rf2hd256x30m2w0_inst.QA_int, 'b0);
        $deposit (u_mac_wrapper_inst.u_clci_ace_wrapper_inst0.u_axi4_rx.ar_fifo.SRAM_256x112.u_sdpram_256x112_inst0.sram_256x40_inst[0].u_rf2hd256x40m2w0_inst.QA_int, 'b0);
        $deposit (u_mac_wrapper_inst.u_clci_ace_wrapper_inst0.u_axi4_rx.ar_fifo.SRAM_256x112.u_sdpram_256x112_inst0.sram_256x40_inst[1].u_rf2hd256x40m2w0_inst.QA_int, 'b0);
        $deposit (u_mac_wrapper_inst.u_clci_ace_wrapper_inst0.u_axi4_rx.ar_fifo.SRAM_256x112.u_sdpram_256x112_inst0.sram_256x40_inst[2].u_rf2hd256x40m2w0_inst.QA_int, 'b0);
        $deposit (u_mac_wrapper_inst.u_clci_ace_wrapper_inst0.u_axi4_rx.aw_fifo.SRAM_256x111.u_sdpram_256x111_inst0.sram_256x40_inst[0].u_rf2hd256x40m2w0_inst.QA_int, 'b0);
        $deposit (u_mac_wrapper_inst.u_clci_ace_wrapper_inst0.u_axi4_rx.aw_fifo.SRAM_256x111.u_sdpram_256x111_inst0.sram_256x40_inst[1].u_rf2hd256x40m2w0_inst.QA_int, 'b0);
        $deposit (u_mac_wrapper_inst.u_clci_ace_wrapper_inst0.u_axi4_rx.aw_fifo.SRAM_256x111.u_sdpram_256x111_inst0.sram_256x40_inst[2].u_rf2hd256x40m2w0_inst.QA_int, 'b0);
        $deposit (u_mac_wrapper_inst.u_clci_ace_wrapper_inst0.u_axi4_tx.wd_fifo.SRAM_32x577.u_sdpram_32x57_inst0.sram_32x60_inst[0].u_rf2hd32x60m2w0_inst.QA_int, 'b0);
        $deposit (u_mac_wrapper_inst.u_clci_ace_wrapper_inst0.u_axi4_tx.wd_fifo.SRAM_32x577.u_sdpram_32x57_inst0.sram_32x60_inst[1].u_rf2hd32x60m2w0_inst.QA_int, 'b0);
        $deposit (u_mac_wrapper_inst.u_clci_ace_wrapper_inst0.u_axi4_tx.wd_fifo.SRAM_32x577.u_sdpram_32x57_inst0.sram_32x60_inst[2].u_rf2hd32x60m2w0_inst.QA_int, 'b0);
        $deposit (u_mac_wrapper_inst.u_clci_ace_wrapper_inst0.u_axi4_tx.wd_fifo.SRAM_32x577.u_sdpram_32x57_inst0.sram_32x80_inst[0].u_rf2hd32x80m2w0_inst.QA_int, 'b0);
        $deposit (u_mac_wrapper_inst.u_clci_ace_wrapper_inst0.u_axi4_tx.wd_fifo.SRAM_32x577.u_sdpram_32x57_inst0.sram_32x80_inst[1].u_rf2hd32x80m2w0_inst.QA_int, 'b0);
        $deposit (u_mac_wrapper_inst.u_clci_ace_wrapper_inst0.u_axi4_tx.wd_fifo.SRAM_32x577.u_sdpram_32x57_inst0.sram_32x80_inst[2].u_rf2hd32x80m2w0_inst.QA_int, 'b0);
        $deposit (u_mac_wrapper_inst.u_clci_ace_wrapper_inst0.u_axi4_tx.wd_fifo.SRAM_32x577.u_sdpram_32x57_inst0.sram_32x80_inst[3].u_rf2hd32x80m2w0_inst.QA_int, 'b0);
        $deposit (u_mac_wrapper_inst.u_clci_ace_wrapper_inst0.u_axi4_tx.wd_fifo.SRAM_32x577.u_sdpram_32x57_inst0.sram_32x80_inst[4].u_rf2hd32x80m2w0_inst.QA_int, 'b0);
        $deposit (u_mac_wrapper_inst.u_clci_ace_wrapper_inst0.u_axi4_tx.ar_fifo.SRAM_32x112.u_sdpram_32x112_inst0.sram_32x60_inst[0].u_rf2hd32x60m2w0_inst.QA_int, 'b0);
        $deposit (u_mac_wrapper_inst.u_clci_ace_wrapper_inst0.u_axi4_tx.ar_fifo.SRAM_32x112.u_sdpram_32x112_inst0.sram_32x60_inst[1].u_rf2hd32x60m2w0_inst.QA_int, 'b0);
        $deposit (u_mac_wrapper_inst.u_clci_ace_wrapper_inst0.u_axi4_tx.aw_fifo.SRAM_32x111.u_sdpram_32x111_inst0.sram_32x60_inst[0].u_rf2hd32x60m2w0_inst.QA_int, 'b0);
        $deposit (u_mac_wrapper_inst.u_clci_ace_wrapper_inst0.u_axi4_tx.aw_fifo.SRAM_32x111.u_sdpram_32x111_inst0.sram_32x60_inst[1].u_rf2hd32x60m2w0_inst.QA_int, 'b0);
        
    end

    genvar geni;
    generate
        for (geni=0;geni<16;geni=geni+1) begin : gen_clci_init_mem_adapter
            initial begin
                #10ns;
                $deposit (u_clci_ucie_adapter_inst0.clci_adapter_tx_ctrl_ctrl.u_sdpram_64x1248_inst0.sram_128x60_inst[geni].u_rf2hd64x80m2w0_inst.QA_int, 'b0);
            end
        end
    endgenerate

    generate
        for (geni=0;geni<4;geni=geni+1) begin : gen_post_mac_rx_flow_ctrl
            initial begin
                #10ns;
                $deposit (u_post_mac2201_top_inst.rx_flow_ctrl_fifo_port4_pcs_rx_inst0.u_cl2100_sync_fifo_inst0.SRAM_128x306.u_sdpram_128x306_inst0.sram_128x60_inst[0].u_rf2hd128x60m2w0_inst.QA_int, 'b0);
                $deposit (u_post_mac2201_top_inst.rx_flow_ctrl_fifo_port5_pcs_rx_inst0.u_cl2100_sync_fifo_inst0.SRAM_128x306.u_sdpram_128x306_inst0.sram_128x60_inst[0].u_rf2hd128x60m2w0_inst.QA_int, 'b0);
                $deposit (u_post_mac2201_top_inst.rx_flow_ctrl_fifo_port6_pcs_rx_inst0.u_cl2100_sync_fifo_inst0.SRAM_128x306.u_sdpram_128x306_inst0.sram_128x60_inst[0].u_rf2hd128x60m2w0_inst.QA_int, 'b0);
            end
        end
    endgenerate

    generate
        for (geni=0;geni<13;geni=geni+1) begin : gen_mac_rx_rdfifo_wdfifo
            initial begin
                #10ns;
                $deposit (u_mac_wrapper_inst.u_clci_ace_wrapper_inst0.u_axi4_rx.rd_fifo.SRAM_256x542.u_sdpram_256x542_inst0.sram_256x40_inst[geni].u_rf2hd256x40m2w0_inst.QA_int, 'b0);
                $deposit (u_mac_wrapper_inst.u_clci_ace_wrapper_inst0.u_axi4_rx.wd_fifo.SRAM_256x577.u_sdpram_256x577_inst0.sram_256x40_inst[geni].u_rf2hd256x40m2w0_inst.QA_int, 'b0);
            end
        end
    endgenerate

    generate
        for (geni=0;geni<7;geni=geni+1) begin : gen_mac_tx_rdfifo
            initial begin
                #10ns;
                $deposit (u_mac_wrapper_inst.u_clci_ace_wrapper_inst0.u_axi4_tx.rd_fifo.SRAM_32x542.u_sdpram_32x542_inst0.sram_32x80_inst[geni].u_rf2hd32x80m2w0_inst.QA_int, 'b0);
            end
        end
    endgenerate
  `endif
endmodule 
bind M2_clci_ucie_s clci_init_mem u_clci_ini_mem();
