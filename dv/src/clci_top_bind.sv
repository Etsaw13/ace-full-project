
`define MTOP0 die0
`define MTOP1 die1

`define SPHY_INST  u_CLCI_SPHY1_S28
`define LPHY_INST0 u_CLCI_LPHY_S28_inst0
`define ADPT_INST0 u_clci_ucie_adapter_inst0
`define SPHY_INST0 u_CLCI_LPHY_S28_inst0.`SPHY_INST

`define TOP0_LPHY0  `MTOP0.`LPHY_INST0
`define TOP0_ADP0   `MTOP0.`ADPT_INST0
`define TOP0_SPHY0  `MTOP0.`SPHY_INST0
`define TOP0_SPHY0_STR `"`TOP0_SPHY0`"

`define TOP1_LPHY0  `MTOP1.`LPHY_INST0
`define TOP1_ADP0   `MTOP1.`ADPT_INST0
`define TOP1_SPHY0  `MTOP1.`SPHY_INST0
`define TOP1_SPHY0_STR `"`TOP1_SPHY0`"

bind test_top clci_dv_manual_slip u_clci_dv_manual_slip_data_lane0_die0(
    .bit_lock_bypass   (test_top.`TOP0_LPHY0.bit_lock_bypass),
    .rx_lock1_fh_cnt_equal2 (test_top.`TOP0_ADP0.rx_lock1_fh_cnt_equal2),
    .diff_mode         (test_top.`TOP0_LPHY0.diff_mode),
    .ch_idx            (5'd0),
    .in_bit_lock_state (test_top.`TOP0_SPHY0.channel[0].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.in_bit_lock_state),
    .reset_n           (test_top.`TOP0_SPHY0.channel[0].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.reset_n),
    .slip_cnt          (test_top.`TOP0_SPHY0.channel[0].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.slip_cnt),
    .slip_cnt_hier     ( $sformatf("test_top.%s.channel[0].u_raw_pcs_top_inst.u_phy_20b80b_with_slip",`TOP0_SPHY0_STR)),
    .pmd_20_clk        (test_top.`TOP0_SPHY0.u_pma_top.ck_syn_l0),
    .rx_data_div20     (test_top.`TOP0_SPHY0.u_pma_top.rx_dout_l0)
);
bind test_top clci_dv_manual_slip u_clci_dv_manual_slip_data_lane1_die0(
    .bit_lock_bypass   (test_top.`TOP0_LPHY0.bit_lock_bypass),
    .rx_lock1_fh_cnt_equal2 (test_top.`TOP0_ADP0.rx_lock1_fh_cnt_equal2),
    .diff_mode         (test_top.`TOP0_LPHY0.diff_mode),
    .ch_idx            (5'd1),
    .in_bit_lock_state (test_top.`TOP0_SPHY0.channel[1].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.in_bit_lock_state),
    .reset_n           (test_top.`TOP0_SPHY0.channel[1].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.reset_n),
    .slip_cnt          (test_top.`TOP0_SPHY0.channel[1].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.slip_cnt),
    .slip_cnt_hier     ($sformatf("test_top.%s.channel[1].u_raw_pcs_top_inst.u_phy_20b80b_with_slip",`TOP0_SPHY0_STR)),
    .pmd_20_clk        (test_top.`TOP0_SPHY0.u_pma_top.ck_syn_l1),
    .rx_data_div20     (test_top.`TOP0_SPHY0.u_pma_top.rx_dout_l1)
);
bind test_top clci_dv_manual_slip u_clci_dv_manual_slip_data_lane2_die0(
    .bit_lock_bypass   (test_top.`TOP0_LPHY0.bit_lock_bypass),
    .rx_lock1_fh_cnt_equal2 (test_top.`TOP0_ADP0.rx_lock1_fh_cnt_equal2),
    .diff_mode         (test_top.`TOP0_LPHY0.diff_mode),
    .ch_idx            (5'd2),
    .in_bit_lock_state (test_top.`TOP0_SPHY0.channel[2].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.in_bit_lock_state),
    .reset_n           (test_top.`TOP0_SPHY0.channel[2].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.reset_n),
    .slip_cnt          (test_top.`TOP0_SPHY0.channel[2].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.slip_cnt),
    .slip_cnt_hier     ($sformatf("test_top.%s.channel[2].u_raw_pcs_top_inst.u_phy_20b80b_with_slip",`TOP0_SPHY0_STR)),
    .pmd_20_clk        (test_top.`TOP0_SPHY0.u_pma_top.ck_syn_l2),
    .rx_data_div20     (test_top.`TOP0_SPHY0.u_pma_top.rx_dout_l2)
);
bind test_top clci_dv_manual_slip u_clci_dv_manual_slip_data_lane3_die0(
    .bit_lock_bypass   (test_top.`TOP0_LPHY0.bit_lock_bypass),
    .rx_lock1_fh_cnt_equal2 (test_top.`TOP0_ADP0.rx_lock1_fh_cnt_equal2),
    .diff_mode         (test_top.`TOP0_LPHY0.diff_mode),
    .ch_idx            (5'd3),
    .in_bit_lock_state (test_top.`TOP0_SPHY0.channel[3].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.in_bit_lock_state),
    .reset_n           (test_top.`TOP0_SPHY0.channel[3].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.reset_n),
    .slip_cnt          (test_top.`TOP0_SPHY0.channel[3].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.slip_cnt),
    .slip_cnt_hier     ($sformatf("test_top.%s.channel[3].u_raw_pcs_top_inst.u_phy_20b80b_with_slip",`TOP0_SPHY0_STR)),
    .pmd_20_clk        (test_top.`TOP0_SPHY0.u_pma_top.ck_syn_l3),
    .rx_data_div20     (test_top.`TOP0_SPHY0.u_pma_top.rx_dout_l3)
);
bind test_top clci_dv_manual_slip u_clci_dv_manual_slip_data_lane4_die0(
    .bit_lock_bypass   (test_top.`TOP0_LPHY0.bit_lock_bypass),
    .rx_lock1_fh_cnt_equal2 (test_top.`TOP0_ADP0.rx_lock1_fh_cnt_equal2),
    .diff_mode         (test_top.`TOP0_LPHY0.diff_mode),
    .ch_idx            (5'd4),
    .in_bit_lock_state (test_top.`TOP0_SPHY0.channel[4].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.in_bit_lock_state),
    .reset_n           (test_top.`TOP0_SPHY0.channel[4].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.reset_n),
    .slip_cnt          (test_top.`TOP0_SPHY0.channel[4].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.slip_cnt),
    .slip_cnt_hier     ($sformatf("test_top.%s.channel[4].u_raw_pcs_top_inst.u_phy_20b80b_with_slip",`TOP0_SPHY0_STR)),
    .pmd_20_clk        (test_top.`TOP0_SPHY0.u_pma_top.ck_syn_l4),
    .rx_data_div20     (test_top.`TOP0_SPHY0.u_pma_top.rx_dout_l4)
);
bind test_top clci_dv_manual_slip u_clci_dv_manual_slip_data_lane5_die0(
    .bit_lock_bypass   (test_top.`TOP0_LPHY0.bit_lock_bypass),
    .rx_lock1_fh_cnt_equal2 (test_top.`TOP0_ADP0.rx_lock1_fh_cnt_equal2),
    .diff_mode         (test_top.`TOP0_LPHY0.diff_mode),
    .ch_idx            (5'd5),
    .in_bit_lock_state (test_top.`TOP0_SPHY0.channel[5].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.in_bit_lock_state),
    .reset_n           (test_top.`TOP0_SPHY0.channel[5].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.reset_n),
    .slip_cnt          (test_top.`TOP0_SPHY0.channel[5].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.slip_cnt),
    .slip_cnt_hier     ($sformatf("test_top.%s.channel[5].u_raw_pcs_top_inst.u_phy_20b80b_with_slip",`TOP0_SPHY0_STR)),
    .pmd_20_clk        (test_top.`TOP0_SPHY0.u_pma_top.ck_syn_l5),
    .rx_data_div20     (test_top.`TOP0_SPHY0.u_pma_top.rx_dout_l5)
);
bind test_top clci_dv_manual_slip u_clci_dv_manual_slip_data_lane6_die0(
    .bit_lock_bypass   (test_top.`TOP0_LPHY0.bit_lock_bypass),
    .rx_lock1_fh_cnt_equal2 (test_top.`TOP0_ADP0.rx_lock1_fh_cnt_equal2),
    .diff_mode         (test_top.`TOP0_LPHY0.diff_mode),
    .ch_idx            (5'd6),
    .in_bit_lock_state (test_top.`TOP0_SPHY0.channel[6].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.in_bit_lock_state),
    .reset_n           (test_top.`TOP0_SPHY0.channel[6].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.reset_n),
    .slip_cnt          (test_top.`TOP0_SPHY0.channel[6].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.slip_cnt),
    .slip_cnt_hier     ($sformatf("test_top.%s.channel[6].u_raw_pcs_top_inst.u_phy_20b80b_with_slip",`TOP0_SPHY0_STR)),
    .pmd_20_clk        (test_top.`TOP0_SPHY0.u_pma_top.ck_syn_l6),
    .rx_data_div20     (test_top.`TOP0_SPHY0.u_pma_top.rx_dout_l6)
);
bind test_top clci_dv_manual_slip u_clci_dv_manual_slip_data_lane7_die0(
    .bit_lock_bypass   (test_top.`TOP0_LPHY0.bit_lock_bypass),
    .rx_lock1_fh_cnt_equal2 (test_top.`TOP0_ADP0.rx_lock1_fh_cnt_equal2),
    .diff_mode         (test_top.`TOP0_LPHY0.diff_mode),
    .ch_idx            (5'd7),
    .in_bit_lock_state (test_top.`TOP0_SPHY0.channel[7].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.in_bit_lock_state),
    .reset_n           (test_top.`TOP0_SPHY0.channel[7].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.reset_n),
    .slip_cnt          (test_top.`TOP0_SPHY0.channel[7].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.slip_cnt),
    .slip_cnt_hier     ($sformatf("test_top.%s.channel[7].u_raw_pcs_top_inst.u_phy_20b80b_with_slip",`TOP0_SPHY0_STR)),
    .pmd_20_clk        (test_top.`TOP0_SPHY0.u_pma_top.ck_syn_l7),
    .rx_data_div20     (test_top.`TOP0_SPHY0.u_pma_top.rx_dout_l7)
);
bind test_top clci_dv_manual_slip u_clci_dv_manual_slip_data_lane8_die0(
    .bit_lock_bypass   (test_top.`TOP0_LPHY0.bit_lock_bypass),
    .rx_lock1_fh_cnt_equal2 (test_top.`TOP0_ADP0.rx_lock1_fh_cnt_equal2),
    .diff_mode         (test_top.`TOP0_LPHY0.diff_mode),
    .ch_idx            (5'd8),
    .in_bit_lock_state (test_top.`TOP0_SPHY0.channel[8].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.in_bit_lock_state),
    .reset_n           (test_top.`TOP0_SPHY0.channel[8].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.reset_n),
    .slip_cnt          (test_top.`TOP0_SPHY0.channel[8].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.slip_cnt),
    .slip_cnt_hier     ($sformatf("test_top.%s.channel[8].u_raw_pcs_top_inst.u_phy_20b80b_with_slip",`TOP0_SPHY0_STR)),
    .pmd_20_clk        (test_top.`TOP0_SPHY0.u_pma_top.ck_syn_ltrk),
    .rx_data_div20     (test_top.`TOP0_SPHY0.u_pma_top.rx_dout_ltrk)
);
bind test_top clci_dv_manual_slip u_clci_dv_manual_slip_data_lane9_die0(
    .bit_lock_bypass   (test_top.`TOP0_LPHY0.bit_lock_bypass),
    .rx_lock1_fh_cnt_equal2 (test_top.`TOP0_ADP0.rx_lock1_fh_cnt_equal2),
    .diff_mode         (test_top.`TOP0_LPHY0.diff_mode),
    .ch_idx            (5'd9),
    .in_bit_lock_state (test_top.`TOP0_SPHY0.channel[9].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.in_bit_lock_state),
    .reset_n           (test_top.`TOP0_SPHY0.channel[9].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.reset_n),
    .slip_cnt          (test_top.`TOP0_SPHY0.channel[9].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.slip_cnt),
    .slip_cnt_hier     ($sformatf("test_top.%s.channel[9].u_raw_pcs_top_inst.u_phy_20b80b_with_slip",`TOP0_SPHY0_STR)),
    .pmd_20_clk        (test_top.`TOP0_SPHY0.u_pma_top.ck_syn_lvld),
    .rx_data_div20     (test_top.`TOP0_SPHY0.u_pma_top.rx_dout_lvld)
);
bind test_top clci_dv_manual_slip u_clci_dv_manual_slip_data_lane10_die0(
    .bit_lock_bypass   (test_top.`TOP0_LPHY0.bit_lock_bypass),
    .rx_lock1_fh_cnt_equal2 (test_top.`TOP0_ADP0.rx_lock1_fh_cnt_equal2),
    .diff_mode         (test_top.`TOP0_LPHY0.diff_mode),
    .ch_idx            (5'd10),
    .in_bit_lock_state (test_top.`TOP0_SPHY0.channel[10].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.in_bit_lock_state),
    .reset_n           (test_top.`TOP0_SPHY0.channel[10].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.reset_n),
    .slip_cnt          (test_top.`TOP0_SPHY0.channel[10].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.slip_cnt),
    .slip_cnt_hier     ($sformatf("test_top.%s.channel[10].u_raw_pcs_top_inst.u_phy_20b80b_with_slip",`TOP0_SPHY0_STR)),
    .pmd_20_clk        (test_top.`TOP0_SPHY0.u_pma_top.ck_syn_l8),
    .rx_data_div20     (test_top.`TOP0_SPHY0.u_pma_top.rx_dout_l8)
);
bind test_top clci_dv_manual_slip u_clci_dv_manual_slip_data_lane11_die0(
    .bit_lock_bypass   (test_top.`TOP0_LPHY0.bit_lock_bypass),
    .rx_lock1_fh_cnt_equal2 (test_top.`TOP0_ADP0.rx_lock1_fh_cnt_equal2),
    .diff_mode         (test_top.`TOP0_LPHY0.diff_mode),
    .ch_idx            (5'd11),
    .in_bit_lock_state (test_top.`TOP0_SPHY0.channel[11].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.in_bit_lock_state),
    .reset_n           (test_top.`TOP0_SPHY0.channel[11].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.reset_n),
    .slip_cnt          (test_top.`TOP0_SPHY0.channel[11].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.slip_cnt),
    .slip_cnt_hier     ($sformatf("test_top.%s.channel[11].u_raw_pcs_top_inst.u_phy_20b80b_with_slip",`TOP0_SPHY0_STR)),
    .pmd_20_clk        (test_top.`TOP0_SPHY0.u_pma_top.ck_syn_l9),
    .rx_data_div20     (test_top.`TOP0_SPHY0.u_pma_top.rx_dout_l9)
);
bind test_top clci_dv_manual_slip u_clci_dv_manual_slip_data_lane12_die0(
    .bit_lock_bypass   (test_top.`TOP0_LPHY0.bit_lock_bypass),
    .rx_lock1_fh_cnt_equal2 (test_top.`TOP0_ADP0.rx_lock1_fh_cnt_equal2),
    .diff_mode         (test_top.`TOP0_LPHY0.diff_mode),
    .ch_idx            (5'd12),
    .in_bit_lock_state (test_top.`TOP0_SPHY0.channel[12].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.in_bit_lock_state),
    .reset_n           (test_top.`TOP0_SPHY0.channel[12].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.reset_n),
    .slip_cnt          (test_top.`TOP0_SPHY0.channel[12].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.slip_cnt),
    .slip_cnt_hier     ($sformatf("test_top.%s.channel[12].u_raw_pcs_top_inst.u_phy_20b80b_with_slip",`TOP0_SPHY0_STR)),
    .pmd_20_clk        (test_top.`TOP0_SPHY0.u_pma_top.ck_syn_l10),
    .rx_data_div20     (test_top.`TOP0_SPHY0.u_pma_top.rx_dout_l10)
);
bind test_top clci_dv_manual_slip u_clci_dv_manual_slip_data_lane13_die0(
    .bit_lock_bypass   (test_top.`TOP0_LPHY0.bit_lock_bypass),
    .rx_lock1_fh_cnt_equal2 (test_top.`TOP0_ADP0.rx_lock1_fh_cnt_equal2),
    .diff_mode         (test_top.`TOP0_LPHY0.diff_mode),
    .ch_idx            (5'd13),
    .in_bit_lock_state (test_top.`TOP0_SPHY0.channel[13].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.in_bit_lock_state),
    .reset_n           (test_top.`TOP0_SPHY0.channel[13].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.reset_n),
    .slip_cnt          (test_top.`TOP0_SPHY0.channel[13].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.slip_cnt),
    .slip_cnt_hier     ($sformatf("test_top.%s.channel[13].u_raw_pcs_top_inst.u_phy_20b80b_with_slip",`TOP0_SPHY0_STR)),
    .pmd_20_clk        (test_top.`TOP0_SPHY0.u_pma_top.ck_syn_l11),
    .rx_data_div20     (test_top.`TOP0_SPHY0.u_pma_top.rx_dout_l11)
);
bind test_top clci_dv_manual_slip u_clci_dv_manual_slip_data_lane14_die0(
    .bit_lock_bypass   (test_top.`TOP0_LPHY0.bit_lock_bypass),
    .rx_lock1_fh_cnt_equal2 (test_top.`TOP0_ADP0.rx_lock1_fh_cnt_equal2),
    .diff_mode         (test_top.`TOP0_LPHY0.diff_mode),
    .ch_idx            (5'd14),
    .in_bit_lock_state (test_top.`TOP0_SPHY0.channel[14].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.in_bit_lock_state),
    .reset_n           (test_top.`TOP0_SPHY0.channel[14].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.reset_n),
    .slip_cnt          (test_top.`TOP0_SPHY0.channel[14].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.slip_cnt),
    .slip_cnt_hier     ($sformatf("test_top.%s.channel[14].u_raw_pcs_top_inst.u_phy_20b80b_with_slip",`TOP0_SPHY0_STR)),
    .pmd_20_clk        (test_top.`TOP0_SPHY0.u_pma_top.ck_syn_l12),
    .rx_data_div20     (test_top.`TOP0_SPHY0.u_pma_top.rx_dout_l12)
);
bind test_top clci_dv_manual_slip u_clci_dv_manual_slip_data_lane15_die0(
    .bit_lock_bypass   (test_top.`TOP0_LPHY0.bit_lock_bypass),
    .rx_lock1_fh_cnt_equal2 (test_top.`TOP0_ADP0.rx_lock1_fh_cnt_equal2),
    .diff_mode         (test_top.`TOP0_LPHY0.diff_mode),
    .ch_idx            (5'd15),
    .in_bit_lock_state (test_top.`TOP0_SPHY0.channel[15].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.in_bit_lock_state),
    .reset_n           (test_top.`TOP0_SPHY0.channel[15].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.reset_n),
    .slip_cnt          (test_top.`TOP0_SPHY0.channel[15].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.slip_cnt),
    .slip_cnt_hier     ($sformatf("test_top.%s.channel[15].u_raw_pcs_top_inst.u_phy_20b80b_with_slip",`TOP0_SPHY0_STR)),
    .pmd_20_clk        (test_top.`TOP0_SPHY0.u_pma_top.ck_syn_l13),
    .rx_data_div20     (test_top.`TOP0_SPHY0.u_pma_top.rx_dout_l13)
);
bind test_top clci_dv_manual_slip u_clci_dv_manual_slip_data_lane16_die0(
    .bit_lock_bypass   (test_top.`TOP0_LPHY0.bit_lock_bypass),
    .rx_lock1_fh_cnt_equal2 (test_top.`TOP0_ADP0.rx_lock1_fh_cnt_equal2),
    .diff_mode         (test_top.`TOP0_LPHY0.diff_mode),
    .ch_idx            (5'd16),
    .in_bit_lock_state (test_top.`TOP0_SPHY0.channel[16].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.in_bit_lock_state),
    .reset_n           (test_top.`TOP0_SPHY0.channel[16].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.reset_n),
    .slip_cnt          (test_top.`TOP0_SPHY0.channel[16].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.slip_cnt),
    .slip_cnt_hier     ($sformatf("test_top.%s.channel[16].u_raw_pcs_top_inst.u_phy_20b80b_with_slip",`TOP0_SPHY0_STR)),
    .pmd_20_clk        (test_top.`TOP0_SPHY0.u_pma_top.ck_syn_l14),
    .rx_data_div20     (test_top.`TOP0_SPHY0.u_pma_top.rx_dout_l14)
);
bind test_top clci_dv_manual_slip u_clci_dv_manual_slip_data_lane17_die0(
    .bit_lock_bypass   (test_top.`TOP0_LPHY0.bit_lock_bypass),
    .rx_lock1_fh_cnt_equal2 (test_top.`TOP0_ADP0.rx_lock1_fh_cnt_equal2),
    .diff_mode         (test_top.`TOP0_LPHY0.diff_mode),
    .ch_idx            (5'd17),
    .in_bit_lock_state (test_top.`TOP0_SPHY0.channel[17].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.in_bit_lock_state),
    .reset_n           (test_top.`TOP0_SPHY0.channel[17].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.reset_n),
    .slip_cnt          (test_top.`TOP0_SPHY0.channel[17].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.slip_cnt),
    .slip_cnt_hier     ($sformatf("test_top.%s.channel[17].u_raw_pcs_top_inst.u_phy_20b80b_with_slip",`TOP0_SPHY0_STR)),
    .pmd_20_clk        (test_top.`TOP0_SPHY0.u_pma_top.ck_syn_l15),
    .rx_data_div20     (test_top.`TOP0_SPHY0.u_pma_top.rx_dout_l15)
);
bind test_top clci_dv_manual_slip u_clci_dv_manual_slip_data_lane0_die1(
    .bit_lock_bypass   (test_top.`TOP1_LPHY0.bit_lock_bypass),
    .rx_lock1_fh_cnt_equal2 (test_top.`TOP1_ADP0.rx_lock1_fh_cnt_equal2),
    .diff_mode         (test_top.`TOP1_LPHY0.diff_mode),
    .ch_idx            (5'd0),
    .in_bit_lock_state (test_top.`TOP1_SPHY0.channel[0].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.in_bit_lock_state),
    .reset_n           (test_top.`TOP1_SPHY0.channel[0].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.reset_n),
    .slip_cnt          (test_top.`TOP1_SPHY0.channel[0].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.slip_cnt),
    .slip_cnt_hier     ($sformatf("test_top.%s.channel[0].u_raw_pcs_top_inst.u_phy_20b80b_with_slip",`TOP1_SPHY0_STR)),
    .pmd_20_clk        (test_top.`TOP1_SPHY0.u_pma_top.ck_syn_l0),
    .rx_data_div20     (test_top.`TOP1_SPHY0.u_pma_top.rx_dout_l0)
);
bind test_top clci_dv_manual_slip u_clci_dv_manual_slip_data_lane1_die1(
    .bit_lock_bypass   (test_top.`TOP1_LPHY0.bit_lock_bypass),
    .rx_lock1_fh_cnt_equal2 (test_top.`TOP1_ADP0.rx_lock1_fh_cnt_equal2),
    .diff_mode         (test_top.`TOP1_LPHY0.diff_mode),
    .ch_idx            (5'd1),
    .in_bit_lock_state (test_top.`TOP1_SPHY0.channel[1].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.in_bit_lock_state),
    .reset_n           (test_top.`TOP1_SPHY0.channel[1].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.reset_n),
    .slip_cnt          (test_top.`TOP1_SPHY0.channel[1].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.slip_cnt),
    .slip_cnt_hier     ($sformatf("test_top.%s.channel[1].u_raw_pcs_top_inst.u_phy_20b80b_with_slip",`TOP1_SPHY0_STR)),
    .pmd_20_clk        (test_top.`TOP1_SPHY0.u_pma_top.ck_syn_l1),
    .rx_data_div20     (test_top.`TOP1_SPHY0.u_pma_top.rx_dout_l1)
);
bind test_top clci_dv_manual_slip u_clci_dv_manual_slip_data_lane2_die1(
    .bit_lock_bypass   (test_top.`TOP1_LPHY0.bit_lock_bypass),
    .rx_lock1_fh_cnt_equal2 (test_top.`TOP1_ADP0.rx_lock1_fh_cnt_equal2),
    .diff_mode         (test_top.`TOP1_LPHY0.diff_mode),
    .ch_idx            (5'd2),
    .in_bit_lock_state (test_top.`TOP1_SPHY0.channel[2].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.in_bit_lock_state),
    .reset_n           (test_top.`TOP1_SPHY0.channel[2].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.reset_n),
    .slip_cnt          (test_top.`TOP1_SPHY0.channel[2].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.slip_cnt),
    .slip_cnt_hier     ($sformatf("test_top.%s.channel[2].u_raw_pcs_top_inst.u_phy_20b80b_with_slip",`TOP1_SPHY0_STR)),
    .pmd_20_clk        (test_top.`TOP1_SPHY0.u_pma_top.ck_syn_l2),
    .rx_data_div20     (test_top.`TOP1_SPHY0.u_pma_top.rx_dout_l2)
);
bind test_top clci_dv_manual_slip u_clci_dv_manual_slip_data_lane3_die1(
    .bit_lock_bypass   (test_top.`TOP1_LPHY0.bit_lock_bypass),
    .rx_lock1_fh_cnt_equal2 (test_top.`TOP1_ADP0.rx_lock1_fh_cnt_equal2),
    .diff_mode         (test_top.`TOP1_LPHY0.diff_mode),
    .ch_idx            (5'd3),
    .in_bit_lock_state (test_top.`TOP1_SPHY0.channel[3].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.in_bit_lock_state),
    .reset_n           (test_top.`TOP1_SPHY0.channel[3].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.reset_n),
    .slip_cnt          (test_top.`TOP1_SPHY0.channel[3].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.slip_cnt),
    .slip_cnt_hier     ($sformatf("test_top.%s.channel[3].u_raw_pcs_top_inst.u_phy_20b80b_with_slip",`TOP1_SPHY0_STR)),
    .pmd_20_clk        (test_top.`TOP1_SPHY0.u_pma_top.ck_syn_l3),
    .rx_data_div20     (test_top.`TOP1_SPHY0.u_pma_top.rx_dout_l3)
);
bind test_top clci_dv_manual_slip u_clci_dv_manual_slip_data_lane4_die1(
    .bit_lock_bypass   (test_top.`TOP1_LPHY0.bit_lock_bypass),
    .rx_lock1_fh_cnt_equal2 (test_top.`TOP1_ADP0.rx_lock1_fh_cnt_equal2),
    .diff_mode         (test_top.`TOP1_LPHY0.diff_mode),
    .ch_idx            (5'd4),
    .in_bit_lock_state (test_top.`TOP1_SPHY0.channel[4].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.in_bit_lock_state),
    .reset_n           (test_top.`TOP1_SPHY0.channel[4].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.reset_n),
    .slip_cnt          (test_top.`TOP1_SPHY0.channel[4].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.slip_cnt),
    .slip_cnt_hier     ($sformatf("test_top.%s.channel[4].u_raw_pcs_top_inst.u_phy_20b80b_with_slip",`TOP1_SPHY0_STR)),
    .pmd_20_clk        (test_top.`TOP1_SPHY0.u_pma_top.ck_syn_l4),
    .rx_data_div20     (test_top.`TOP1_SPHY0.u_pma_top.rx_dout_l4)
);
bind test_top clci_dv_manual_slip u_clci_dv_manual_slip_data_lane5_die1(
    .bit_lock_bypass   (test_top.`TOP1_LPHY0.bit_lock_bypass),
    .rx_lock1_fh_cnt_equal2 (test_top.`TOP1_ADP0.rx_lock1_fh_cnt_equal2),
    .diff_mode         (test_top.`TOP1_LPHY0.diff_mode),
    .ch_idx            (5'd5),
    .in_bit_lock_state (test_top.`TOP1_SPHY0.channel[5].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.in_bit_lock_state),
    .reset_n           (test_top.`TOP1_SPHY0.channel[5].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.reset_n),
    .slip_cnt          (test_top.`TOP1_SPHY0.channel[5].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.slip_cnt),
    .slip_cnt_hier     ($sformatf("test_top.%s.channel[5].u_raw_pcs_top_inst.u_phy_20b80b_with_slip",`TOP1_SPHY0_STR)),
    .pmd_20_clk        (test_top.`TOP1_SPHY0.u_pma_top.ck_syn_l5),
    .rx_data_div20     (test_top.`TOP1_SPHY0.u_pma_top.rx_dout_l5)
);
bind test_top clci_dv_manual_slip u_clci_dv_manual_slip_data_lane6_die1(
    .bit_lock_bypass   (test_top.`TOP1_LPHY0.bit_lock_bypass),
    .rx_lock1_fh_cnt_equal2 (test_top.`TOP1_ADP0.rx_lock1_fh_cnt_equal2),
    .diff_mode         (test_top.`TOP1_LPHY0.diff_mode),
    .ch_idx            (5'd6),
    .in_bit_lock_state (test_top.`TOP1_SPHY0.channel[6].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.in_bit_lock_state),
    .reset_n           (test_top.`TOP1_SPHY0.channel[6].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.reset_n),
    .slip_cnt          (test_top.`TOP1_SPHY0.channel[6].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.slip_cnt),
    .slip_cnt_hier     ($sformatf("test_top.%s.channel[6].u_raw_pcs_top_inst.u_phy_20b80b_with_slip",`TOP1_SPHY0_STR)),
    .pmd_20_clk        (test_top.`TOP1_SPHY0.u_pma_top.ck_syn_l6),
    .rx_data_div20     (test_top.`TOP1_SPHY0.u_pma_top.rx_dout_l6)
);
bind test_top clci_dv_manual_slip u_clci_dv_manual_slip_data_lane7_die1(
    .bit_lock_bypass   (test_top.`TOP1_LPHY0.bit_lock_bypass),
    .rx_lock1_fh_cnt_equal2 (test_top.`TOP1_ADP0.rx_lock1_fh_cnt_equal2),
    .diff_mode         (test_top.`TOP1_LPHY0.diff_mode),
    .ch_idx            (5'd7),
    .in_bit_lock_state (test_top.`TOP1_SPHY0.channel[7].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.in_bit_lock_state),
    .reset_n           (test_top.`TOP1_SPHY0.channel[7].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.reset_n),
    .slip_cnt          (test_top.`TOP1_SPHY0.channel[7].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.slip_cnt),
    .slip_cnt_hier     ($sformatf("test_top.%s.channel[7].u_raw_pcs_top_inst.u_phy_20b80b_with_slip",`TOP1_SPHY0_STR)),
    .pmd_20_clk        (test_top.`TOP1_SPHY0.u_pma_top.ck_syn_l7),
    .rx_data_div20     (test_top.`TOP1_SPHY0.u_pma_top.rx_dout_l7)
);
bind test_top clci_dv_manual_slip u_clci_dv_manual_slip_data_lane8_die1(
    .bit_lock_bypass   (test_top.`TOP1_LPHY0.bit_lock_bypass),
    .rx_lock1_fh_cnt_equal2 (test_top.`TOP1_ADP0.rx_lock1_fh_cnt_equal2),
    .diff_mode         (test_top.`TOP1_LPHY0.diff_mode),
    .ch_idx            (5'd8),
    .in_bit_lock_state (test_top.`TOP1_SPHY0.channel[8].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.in_bit_lock_state),
    .reset_n           (test_top.`TOP1_SPHY0.channel[8].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.reset_n),
    .slip_cnt          (test_top.`TOP1_SPHY0.channel[8].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.slip_cnt),
    .slip_cnt_hier     ($sformatf("test_top.%s.channel[8].u_raw_pcs_top_inst.u_phy_20b80b_with_slip",`TOP1_SPHY0_STR)),
    .pmd_20_clk        (test_top.`TOP1_SPHY0.u_pma_top.ck_syn_ltrk),
    .rx_data_div20     (test_top.`TOP1_SPHY0.u_pma_top.rx_dout_ltrk)
);
bind test_top clci_dv_manual_slip u_clci_dv_manual_slip_data_lane9_die1(
    .bit_lock_bypass   (test_top.`TOP1_LPHY0.bit_lock_bypass),
    .rx_lock1_fh_cnt_equal2 (test_top.`TOP1_ADP0.rx_lock1_fh_cnt_equal2),
    .diff_mode         (test_top.`TOP1_LPHY0.diff_mode),
    .ch_idx            (5'd9),
    .in_bit_lock_state (test_top.`TOP1_SPHY0.channel[9].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.in_bit_lock_state),
    .reset_n           (test_top.`TOP1_SPHY0.channel[9].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.reset_n),
    .slip_cnt          (test_top.`TOP1_SPHY0.channel[9].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.slip_cnt),
    .slip_cnt_hier     ($sformatf("test_top.%s.channel[9].u_raw_pcs_top_inst.u_phy_20b80b_with_slip",`TOP1_SPHY0_STR)),
    .pmd_20_clk        (test_top.`TOP1_SPHY0.u_pma_top.ck_syn_lvld),
    .rx_data_div20     (test_top.`TOP1_SPHY0.u_pma_top.rx_dout_lvld)
);
bind test_top clci_dv_manual_slip u_clci_dv_manual_slip_data_lane10_die1(
    .bit_lock_bypass   (test_top.`TOP1_LPHY0.bit_lock_bypass),
    .rx_lock1_fh_cnt_equal2 (test_top.`TOP1_ADP0.rx_lock1_fh_cnt_equal2),
    .diff_mode         (test_top.`TOP1_LPHY0.diff_mode),
    .ch_idx            (5'd10),
    .in_bit_lock_state (test_top.`TOP1_SPHY0.channel[10].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.in_bit_lock_state),
    .reset_n           (test_top.`TOP1_SPHY0.channel[10].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.reset_n),
    .slip_cnt          (test_top.`TOP1_SPHY0.channel[10].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.slip_cnt),
    .slip_cnt_hier     ($sformatf("test_top.%s.channel[10].u_raw_pcs_top_inst.u_phy_20b80b_with_slip",`TOP1_SPHY0_STR)),
    .pmd_20_clk        (test_top.`TOP1_SPHY0.u_pma_top.ck_syn_l8),
    .rx_data_div20     (test_top.`TOP1_SPHY0.u_pma_top.rx_dout_l8)
);
bind test_top clci_dv_manual_slip u_clci_dv_manual_slip_data_lane11_die1(
    .bit_lock_bypass   (test_top.`TOP1_LPHY0.bit_lock_bypass),
    .rx_lock1_fh_cnt_equal2 (test_top.`TOP1_ADP0.rx_lock1_fh_cnt_equal2),
    .diff_mode         (test_top.`TOP1_LPHY0.diff_mode),
    .ch_idx            (5'd11),
    .in_bit_lock_state (test_top.`TOP1_SPHY0.channel[11].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.in_bit_lock_state),
    .reset_n           (test_top.`TOP1_SPHY0.channel[11].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.reset_n),
    .slip_cnt          (test_top.`TOP1_SPHY0.channel[11].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.slip_cnt),
    .slip_cnt_hier     ($sformatf("test_top.%s.channel[11].u_raw_pcs_top_inst.u_phy_20b80b_with_slip",`TOP1_SPHY0_STR)),
    .pmd_20_clk        (test_top.`TOP1_SPHY0.u_pma_top.ck_syn_l9),
    .rx_data_div20     (test_top.`TOP1_SPHY0.u_pma_top.rx_dout_l9)
);
bind test_top clci_dv_manual_slip u_clci_dv_manual_slip_data_lane12_die1(
    .bit_lock_bypass   (test_top.`TOP1_LPHY0.bit_lock_bypass),
    .rx_lock1_fh_cnt_equal2 (test_top.`TOP1_ADP0.rx_lock1_fh_cnt_equal2),
    .diff_mode         (test_top.`TOP1_LPHY0.diff_mode),
    .ch_idx            (5'd12),
    .in_bit_lock_state (test_top.`TOP1_SPHY0.channel[12].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.in_bit_lock_state),
    .reset_n           (test_top.`TOP1_SPHY0.channel[12].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.reset_n),
    .slip_cnt          (test_top.`TOP1_SPHY0.channel[12].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.slip_cnt),
    .slip_cnt_hier     ($sformatf("test_top.%s.channel[12].u_raw_pcs_top_inst.u_phy_20b80b_with_slip",`TOP1_SPHY0_STR)),
    .pmd_20_clk        (test_top.`TOP1_SPHY0.u_pma_top.ck_syn_l10),
    .rx_data_div20     (test_top.`TOP1_SPHY0.u_pma_top.rx_dout_l10)
);
bind test_top clci_dv_manual_slip u_clci_dv_manual_slip_data_lane13_die1(
    .bit_lock_bypass   (test_top.`TOP1_LPHY0.bit_lock_bypass),
    .rx_lock1_fh_cnt_equal2 (test_top.`TOP1_ADP0.rx_lock1_fh_cnt_equal2),
    .diff_mode         (test_top.`TOP1_LPHY0.diff_mode),
    .ch_idx            (5'd13),
    .in_bit_lock_state (test_top.`TOP1_SPHY0.channel[13].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.in_bit_lock_state),
    .reset_n           (test_top.`TOP1_SPHY0.channel[13].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.reset_n),
    .slip_cnt          (test_top.`TOP1_SPHY0.channel[13].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.slip_cnt),
    .slip_cnt_hier     ($sformatf("test_top.%s.channel[13].u_raw_pcs_top_inst.u_phy_20b80b_with_slip",`TOP1_SPHY0_STR)),
    .pmd_20_clk        (test_top.`TOP1_SPHY0.u_pma_top.ck_syn_l11),
    .rx_data_div20     (test_top.`TOP1_SPHY0.u_pma_top.rx_dout_l11)
);
bind test_top clci_dv_manual_slip u_clci_dv_manual_slip_data_lane14_die1(
    .bit_lock_bypass   (test_top.`TOP1_LPHY0.bit_lock_bypass),
    .rx_lock1_fh_cnt_equal2 (test_top.`TOP1_ADP0.rx_lock1_fh_cnt_equal2),
    .diff_mode         (test_top.`TOP1_LPHY0.diff_mode),
    .ch_idx            (5'd14),
    .in_bit_lock_state (test_top.`TOP1_SPHY0.channel[14].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.in_bit_lock_state),
    .reset_n           (test_top.`TOP1_SPHY0.channel[14].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.reset_n),
    .slip_cnt          (test_top.`TOP1_SPHY0.channel[14].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.slip_cnt),
    .slip_cnt_hier     ($sformatf("test_top.%s.channel[14].u_raw_pcs_top_inst.u_phy_20b80b_with_slip",`TOP1_SPHY0_STR)),
    .pmd_20_clk        (test_top.`TOP1_SPHY0.u_pma_top.ck_syn_l12),
    .rx_data_div20     (test_top.`TOP1_SPHY0.u_pma_top.rx_dout_l12)
);
bind test_top clci_dv_manual_slip u_clci_dv_manual_slip_data_lane15_die1(
    .bit_lock_bypass   (test_top.`TOP1_LPHY0.bit_lock_bypass),
    .rx_lock1_fh_cnt_equal2 (test_top.`TOP1_ADP0.rx_lock1_fh_cnt_equal2),
    .diff_mode         (test_top.`TOP1_LPHY0.diff_mode),
    .ch_idx            (5'd15),
    .in_bit_lock_state (test_top.`TOP1_SPHY0.channel[15].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.in_bit_lock_state),
    .reset_n           (test_top.`TOP1_SPHY0.channel[15].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.reset_n),
    .slip_cnt          (test_top.`TOP1_SPHY0.channel[15].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.slip_cnt),
    .slip_cnt_hier     ($sformatf("test_top.%s.channel[15].u_raw_pcs_top_inst.u_phy_20b80b_with_slip",`TOP1_SPHY0_STR)),
    .pmd_20_clk        (test_top.`TOP1_SPHY0.u_pma_top.ck_syn_l13),
    .rx_data_div20     (test_top.`TOP1_SPHY0.u_pma_top.rx_dout_l13)
);
bind test_top clci_dv_manual_slip u_clci_dv_manual_slip_data_lane16_die1(
    .bit_lock_bypass   (test_top.`TOP1_LPHY0.bit_lock_bypass),
    .rx_lock1_fh_cnt_equal2 (test_top.`TOP1_ADP0.rx_lock1_fh_cnt_equal2),
    .diff_mode         (test_top.`TOP1_LPHY0.diff_mode),
    .ch_idx            (5'd16),
    .in_bit_lock_state (test_top.`TOP1_SPHY0.channel[16].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.in_bit_lock_state),
    .reset_n           (test_top.`TOP1_SPHY0.channel[16].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.reset_n),
    .slip_cnt          (test_top.`TOP1_SPHY0.channel[16].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.slip_cnt),
    .slip_cnt_hier     ($sformatf("test_top.%s.channel[16].u_raw_pcs_top_inst.u_phy_20b80b_with_slip",`TOP1_SPHY0_STR)),
    .pmd_20_clk        (test_top.`TOP1_SPHY0.u_pma_top.ck_syn_l14),
    .rx_data_div20     (test_top.`TOP1_SPHY0.u_pma_top.rx_dout_l14)
);
bind test_top clci_dv_manual_slip u_clci_dv_manual_slip_data_lane17_die1(
    .bit_lock_bypass   (test_top.`TOP1_LPHY0.bit_lock_bypass),
    .rx_lock1_fh_cnt_equal2 (test_top.`TOP1_ADP0.rx_lock1_fh_cnt_equal2),
    .diff_mode         (test_top.`TOP1_LPHY0.diff_mode),
    .ch_idx            (5'd17),
    .in_bit_lock_state (test_top.`TOP1_SPHY0.channel[17].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.in_bit_lock_state),
    .reset_n           (test_top.`TOP1_SPHY0.channel[17].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.reset_n),
    .slip_cnt          (test_top.`TOP1_SPHY0.channel[17].u_raw_pcs_top_inst.u_phy_20b80b_with_slip.slip_cnt),
    .slip_cnt_hier     ($sformatf("test_top.%s.channel[17].u_raw_pcs_top_inst.u_phy_20b80b_with_slip",`TOP1_SPHY0_STR)),
    .pmd_20_clk        (test_top.`TOP1_SPHY0.u_pma_top.ck_syn_l15),
    .rx_data_div20     (test_top.`TOP1_SPHY0.u_pma_top.rx_dout_l15)
);
