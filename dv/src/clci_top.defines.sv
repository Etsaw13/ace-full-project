// ----------------------------------------------------------
// (c) 2026 M2 Semiconductor, Inc. All rights reserved.
// ----------------------------------------------------------
// The confidential and proprietary information contained in this file may only be used by a person
// authorised under and to the extent permitted by a subsisting licensing agreement from M2 Semiconductor.
// 
// This entire notice must be reproduced on all copies of this file and copies of this file may only be made by a person
// if such person is permitted to do so under the terms of a subsisting license agreement from M2 Semiconductor.
// 
// Modification of this file is not permitted for any one and any case.
// 
// M2 Semiconductor has no responsibility for any problem caused by unpermitted modification of this file.
// **************************************************************************
`ifdef SL8_SNPS
`define SL_MACRO SL8
`elsif SL4_SFDK
`define SL_MACRO SL4
`endif

`ifdef HETERO
`define LIB_PREFIX DIE0_LIB::
`else
`define LIB_PREFIX
`endif

`ifndef MAC_PROTOCOL
`define MAC_PROTOCOL
`endif
// bind doesn't support complicated macro usage, e.g. `define SPHY `MAC_PROTOCOL``CLCI_SPHY2_```SL_MACRO
`ifdef TSMC_N7  // {{
`define SPHY                    `MAC_PROTOCOL``CLCI_SPHY2_TN7
`define LPHY                    `MAC_PROTOCOL``CLCI_LPHY_TN7
`elsif SL4_SFDK // }{
`define SPHY                    `MAC_PROTOCOL``CLCI_SPHY2_SL4
`define LPHY                    `MAC_PROTOCOL``CLCI_LPHY_SL4
`else // }{
`define SPHY                    `MAC_PROTOCOL``CLCI_SPHY1_SL8
`define LPHY                    `MAC_PROTOCOL``CLCI_LPHY_SL8
`endif  // TSMC_N7 }}
`ifdef GATESIM
`ifdef GATESIM_FOR_SPHY
`define MTOP                    `MAC_PROTOCOL``clci_ucie_s
`define CLCI_PCS_TOP            `MAC_PROTOCOL``clci_lphy_pcs_top
`define CLCI_ADPT_TOP           `MAC_PROTOCOL``clci_ucie_adapter
`define MCU_TOP                 `MAC_PROTOCOL``clci_swerv_subsys
`else
`define MTOP                    clci_ucie_s
`define CLCI_PCS_TOP            clci_lphy_pcs_top_1_test_0_clci_ucie_s
`define CLCI_ADPT_TOP           clci_ucie_adapter_1_test_0_clci_ucie_s
`define MCU_TOP                 clci_swerv_subsys_ac_00000000_00ab_2511_00000002_3_test_0_clci_ucie_s
`endif
`else
`define MTOP                    `MAC_PROTOCOL``clci_ucie_s
`define CLCI_PCS_TOP            `MAC_PROTOCOL``clci_lphy_pcs_top
`define CLCI_ADPT_TOP           `MAC_PROTOCOL``clci_ucie_adapter
`define MCU_TOP                 `MAC_PROTOCOL``clci_swerv_subsys
`endif

`ifdef FPGA_SL4_SL8_GTY
`define MCU_TOP0                 axi512_sl4_clci_swerv_subsys
`else
`define MCU_TOP0                 `MCU_TOP
`endif

`define CL2301_ASYNC_FIFO `MAC_PROTOCOL``cl2301_async_fifo

`include "clci_common.defines.svp"
`include "clci.defines.sv"

`define LATEST_CLCI_VER "v3p3"
`ifndef LATEST_CLCI_NAME
    `define LATEST_CLCI_NAME `MTOP
`endif

//`define CLK_BFM Mev_clkbfm
`define CLK_BFM clci_clk_bfm

`ifndef AXI_OST_CAPABILITY
`define AXI_OST_CAPABILITY 128
`endif

`ifndef CXS_PIPE_LVL
`define CXS_PIPE_LVL 1
`endif

`ifdef IS_SOC
`define TOPNAME CL2305
`else
`define TOPNAME clci_pmd_ip_wrapper_v3p3
`endif
`ifndef USE_DUALPHY
`define PHY_NUM 1
`else
`define PHY_NUM 2
`endif

`define USE_PHY
//`define EXTERNAL_SIM_CLK_IN
`ifdef MAC_ONLY
`undef EXTERNAL_SIM_CLK_IN
`undef USE_PHY
`endif
`ifdef MACPCS_ONLY
`undef USE_PHY
`endif

`define PHY0_BASE_ADDR 16'h0
`define PHY1_BASE_ADDR 16'h2000

`define PCS_CH_BASE_ADDR 13'h400
`define MAC_CH_BASE_ADDR 13'h300

`define CLCI_MAX_LANE_SKEW 7
`define CLCI_MIN_LANE_DELAY 3
`define CLCI_MAX_LANE_DELAY `CLCI_MAX_LANE_SKEW+`CLCI_MIN_LANE_DELAY+1

`define AXI_TX_REMAP_ENTRY 4
`define AXI_ADDR_REMAP_WIDTH 30

`define AXI_GROUP_NUM `DIE_NUM  // each group serves 1 die

`ifdef  USE_AXI256
    `define AXI256_EN 1'b1
`else
    `define AXI256_EN 1'b0
`endif

`ifdef  USE_AXI512
    `define AXI512_EN 1'b1
    `define TOP_DIE0_AXI512 `MTOP0.u_mac_wrapper_inst.u_clci_axi512_wrapper_inst0
    `define TOP_DIE1_AXI512 `DIE1.`MTOP_WRAP_INST.u_mac_wrapper_inst.u_clci_axi512_wrapper_inst0
`else
    `define AXI512_EN 1'b0
`endif

`ifdef  USE_AXIS
    `define AXIS_EN 1'b1
    `define MAC_AXI_STREAM_PORT_NUM 1
`else
    `define AXIS_EN 1'b0
    `define MAC_AXI_STREAM_PORT_NUM 0
`endif


`ifdef  USE_2104_STREAM
    `define STREAM_EN 1'b1
`else
    `define STREAM_EN 1'b0
`endif

`define MAC_ACE_PORT_NUM 1
`ifdef  USE_ACE
`define ACE_SUBSYS_NUM 3  // to drive die0/die1/inc separately
`define TOTAL_ACE_MASTER_PORT_NUM `MAC_ACE_PORT_NUM      // master ports only
`define TOTAL_ACE_SLAVE_PORT_NUM  `MAC_ACE_PORT_NUM      // slave ports only
`else
`define ACE_SUBSYS_NUM 0  // to drive die0/die1/inc separately
`endif

`ifdef  USE_ACE
`define TOP_DIE0_MAC_ACE test_top.u_die0.u_clci_ucie_s.u_mac_wrapper_inst.u_clci_ace_wrapper_inst0
`define TOP_DIE1_MAC_ACE test_top.u_die1.u_clci_ucie_s.u_mac_wrapper_inst.u_clci_ace_wrapper_inst0
`endif

`ifdef USE_CHI
`define CHI_SUBSYS_NUM 6    // chi_sys[0,1] to drive die0/die1/inc separately , chi_sys[2,3,4,5] is passived for die0_s, die0_m, die1_s, die1_m monitor 
`else
`define CHI_SUBSYS_NUM 0
`endif

`ifdef USE_SB
`define MEM_READ_32     5'b00000
`define MEM_WRITE_32    5'b00001
`define CFG_READ_32     5'b00100
`define CFG_WRITE_32    5'b00101
`define CMP_NO_DATA     5'b10000
`define CMP_DATA_32     5'b10001
`define CMP_DATA_64     5'b11001
`define MSG_NO_DATA     5'b10010
`define MSG_DATA_64     5'b11011
`define MPM_NO_DATA     5'b10111
`define MPM_W_DATA      5'b11000
`endif

`define MAC_PORT_NUM 8
`ifdef IS_SOC   // {
`define INC_MST_ID_WIDTH 2  // currently only 2 bits are used, even though the connnection is 4 bits.
`define INC_SLV_ID_WIDTH 4
`define CLCI_AXI_ID_WIDTH 16     // must not exceed SVT_AXI_MAX_ID_WIDTH
`define CFG_AXI_ID_WIDTH 2     // must not exceed SVT_AXI_MAX_ID_WIDTH
`define HS_AXI_M_ID_WIDTH 4     // must not exceed SVT_AXI_MAX_ID_WIDTH
`define HS_AXI_S_ID_WIDTH 6     // must not exceed SVT_AXI_MAX_ID_WIDTH
`define MAC_AXI_PORT_NUM 3
`define ACT_MAC_AXI_PORT_NUM 1
`define ACT_MAC_CXS_PORT_NUM 1
`define ACT_MAC_CHI_PORT_NUM 1
`define TOP_AXI_MASTER_NUM (3+1)   // see below for details. All passive
`define TOP_AXI_M_IDX_X2X_HS     (`MAC_AXI_PORT_NUM+0)     //m1
`define TOP_AXI_M_IDX_DMAC    (`MAC_AXI_PORT_NUM+1)     //m2
`define TOP_AXI_M_IDX_ST_S    (`MAC_AXI_PORT_NUM+2)     //m3
`define TOP_AXI_M_IDX_CFG     (`MAC_AXI_PORT_NUM+3)     //flexible cfg
`define TOP_AXI_SLAVE_NUM 4    // see below for details. All passive
`define TOP_AXI_S_IDX_SRAM0     (`MAC_AXI_PORT_NUM+0)   //s1
`define TOP_AXI_S_IDX_ST_S      (`MAC_AXI_PORT_NUM+1)   //s2
`define TOP_AXI_S_IDX_HS2CFG    (`MAC_AXI_PORT_NUM+2)   //s3
`define TOP_AXI_S_IDX_SRAM1     (`MAC_AXI_PORT_NUM+3)   //s4
`define CSR_ADDR_WIDTH 40
`define CSR_DATA_WIDTH 256
`define CFG_ID_WIDTH 2
`define CFG_DATA_WIDTH 128
`define CFG_ADDR_WIDTH 44
`define CFG_OUTSTANDING_NUM 1
`define DIE0_BASE_ADDR `CSR_ADDR_WIDTH'h0
`define DIE1_BASE_ADDR (1<<(`CSR_ADDR_WIDTH-1))
`define I2C_DIE_ID  'h20+{3{die_id}}
`define DIE0_I2C_ID  'h20
`define DIE1_I2C_ID  'h27 
`else   // IS_SOC -> IP }{
`define INC_MST_ID_WIDTH 16  // currently only 2 bits are used, even though the connnection is 4 bits.
`define INC_SLV_ID_WIDTH 16
`define CLCI_AXI_ID_WIDTH 16     // must not exceed SVT_AXI_MAX_ID_WIDTH
`define MAC_AXI_PORT_NUM 3
`define ACT_MAC_AXI_PORT_NUM 3  // 0: axi-256, 1: axi-512, 2: stream port-256
`define ACT_MAC_CXS_PORT_NUM 1
`define TOP_AXI_MASTER_NUM 0   // 0: i2c_, 1: x2x_hs_, 2: dmac_, 3: st_s_
`define TOP_AXI_SLAVE_NUM 0    // 0: die0 clci slave, 1: die1 clci slave, 2: die0 sramc0, 3: die1 sramc0, 4: die0 sramc1, 5: die1 sramc1. NOTE: this affects top_env connect_phase. Make sure they're consistent.
`define CSR_ADDR_WIDTH 32
`define CSR_DATA_WIDTH 32
`define DIE0_BASE_ADDR `CSR_ADDR_WIDTH'h0
`define DIE1_BASE_ADDR `CSR_ADDR_WIDTH'h0
`define I2C_DIE_ID  'h56
`define DIE0_I2C_ID  'h56
`define DIE1_I2C_ID  'h57
`endif  // IS_SOC/IP }
`define DATA_WIDTH `CXS_DAT_WIDTH    // macro required by CADENCE CXS VIP
`define CNTL_WIDTH `CXS_CNTL_WIDTH   // macro required by CADENCE CXS VIP
`ifndef CXS_MAX_CREDIT
`define CXS_MAX_CREDIT 15
`define CXS_MAX_CREDIT_LATENCY 4
`endif //CXS_MAX_CREDIT
`define MAC_ACE_PORT_START_IDX 1
`define MAC_AXI_PORT_START_IDX 4
`define MAC_CXS_PORT_START_IDX 7
`define TOTAL_AXI_MASTER_PORT_NUM (`TOP_AXI_MASTER_NUM+`MAC_AXI_PORT_NUM)      // master ports only
`define TOTAL_STREAM_PORT_NUM 2
`define STREAM_PORT0_DATA_WIDTH 416
`define STREAM_PORT1_DATA_WIDTH 704
`define TOTAL_AXI_SLAVE_PORT_NUM  (`TOP_AXI_SLAVE_NUM +`MAC_AXI_PORT_NUM)      // slave ports only
`define CLCI_XFER_ADDR_WIDTH 50
`define DIE_BASE_ADDR(die_id) (die_id<<(`CSR_ADDR_WIDTH-1))
`define LOCAL_BASE_ADDR (test_config.cfg_vif.master_die<<(`CSR_ADDR_WIDTH-1))
`define MASTER_DIE_I2C_ID  'h20+{3{test_config.cfg_vif.master_die}}     // NOTE: this macro is used only if interface is available
//`define I2C_DIE_ID  'h20+{3{die_id}}     
//`define DIE0_I2C_ID  'h20
//`define DIE1_I2C_ID  'h27
`define I2C_ADDR_TYPE  'h24     // to decide I2C_ADDR_WIDTH. 24 for 40bit
`define I2C_DATA_TYPE  'h32     // to decide I2C_DATA_WIDTH
`define NBYTES 64
`define DLLP_W 8

`ifdef IS_SOC
`define REG_CLKRST_BASE                 'h1000
`define REG_GPIO_BASE                   'h2000
`define REG_CLCI_S_AHB_BASE             'h1003_0000
`define REG_CLCI_S_APB_BASE             'h4000
`define REG_CLCI_MCU_LOCAL_CTRL         'h1002_1000
`define REG_SYS_MCU_LOCAL_CTRL          'h2002_1000
`define REG_CLCI_D_BASE                 'h5000
`define REG_CLCI_P_BASE                 'h6000
`define REG_CLCI_PAM4_BASE              'h7000
`define AHB_CFG_DMAC_BASE               'h200_0000
`define AXI_HS_SRAMC0_BASE              'h300_0000
`define AXI_HS_SRAMC1_BASE              'h600_0000
`define AXI_HS_DUMMY_S4_BASE            'h700_0000
`define AXI_HS_DEFAULT_SIZE             'h001_0000
`define AXI_HS_SRAM_SIZE                'h000_4000
`define AXI_HS_SRAM_SPACE               'h100_0000      // NOTE: defined SPACE is bigger than actual mem size
`define AXI_HS_CLCI_S_BASE              `DIE1_BASE_ADDR
`else
// BASE
`define REG_CLCI_S_AHB_BASE             'h0003_0000
`define REG_CLCI_S_APB_BASE             'h0
`define REG_CLCI_S_APB3_BASE            'h1003_0000

`define REG_CLCI_MCU_ROM                'h0000_0000
`define REG_CLCI_MCU_RAM                'h0001_0000
`define REG_CLCI_MCU_LOCAL_CTRL         'h0002_1000
`define REG_CLCI_MCU_QSPI_CTRL          'h0003_1000
`define REG_CLCI_MCU_DW_UART0           'h0002_0000
`define REG_CLCI_MCU_DW_WDT             'h0002_2000
`define REG_CLCI_MCU_DW_UART1           'h0002_3000
`define REG_CLCI_MCU_DW_TIMER           'h0002_4000
`define REG_CLCI_MCU_DW_X2P0            'h0002_1000
`define REG_CLCI_MCU_DW_X2P0_1          'h0003_0000
`define REG_CLCI_MCU_DW_X2P1            'h0002_0000
`define REG_CLCI_MCU_DW_X2P1_1          'h0002_2000
`define REG_CLCI_MCU_QSPI               'h0800_0000
`define REG_CLCI_MCU_DW_X2P2            'h1000_0000
`define REG_ROM_BASE                    `REG_CLCI_MCU_ROM
`define REG_RAM_BASE                    `REG_CLCI_MCU_RAM
// SIZE
`define REG_CLCI_S_SIZE                 'h1_0000
`define REG_CLCI_MCU_ROM_SIZE           'h1_0000
`define REG_CLCI_MCU_RAM_SIZE           'h1_0000
`define REG_CLCI_MCU_LOCAL_CTRL_SIZE    'h1000
`define REG_CLCI_MCU_QSPI_CTRL_SIZE     'h1000
`define REG_CLCI_MCU_DW_UART0_SIZE      'h0000
`define REG_CLCI_MCU_DW_WDT_SIZE        'h1000
`define REG_CLCI_MCU_DW_UART1_SIZE      'h1000
`define REG_CLCI_MCU_DW_TIMER_SIZE      'h1000
`define REG_CLCI_MCU_DW_X2P0_SIZE       'h1000
`define REG_CLCI_MCU_DW_X2P0_SIZE1      'hD_0000
`define REG_CLCI_MCU_DW_X2P1_SIZE       'h1000
`define REG_CLCI_MCU_DW_X2P1_SIZE1      'hE000
`define REG_CLCI_MCU_QSPI_SIZE          'h800_0000
`define REG_CLCI_MCU_DW_X2P2_SIZE       'hF000_0000
`endif
`define REG_CLCI_S_BASE                 `REG_CLCI_S_AHB_BASE
`define REG_CLCI_S_BASE_S3              `REG_CLCI_S_APB_BASE

`define MTOP_WRAP_INST u_clci_ucie_s
`define MTOP_INST `MTOP_WRAP_INST
`ifdef FPGA_ONLY // {{
`ifdef FPGA_GTY 
`ifdef FPGA_SL4_SL8_GTY 
`define FPGA_GTY_CLCI_INST ucie_sp_top_inst.clci_ucie_inst
`define MTOP0 `DIE0.`FPGA_GTY_CLCI_INST
`define MTOP1 `DIE1.`FPGA_GTY_CLCI_INST 
`define MTOP0_ST_S_REGS `MTOP0.`REG_INST0
`define MTOP1_ST_S_REGS `MTOP1.`REG_INST0
`else
`ifdef PARITY_CHK
`define FPGA_GTY_CLCI_INST clci_ucie_inst.u_clci_ucie_s_v1p1_hdio_mtt
`define MTOP0 `DIE0.`FPGA_GTY_CLCI_INST
`define MTOP1 `DIE1.`FPGA_GTY_CLCI_INST 
`else 
`define FPGA_GTY_CLCI_INST clci_ucie_inst
`define MTOP0 `DIE0.`FPGA_GTY_CLCI_INST
`define MTOP1 `DIE1.`FPGA_GTY_CLCI_INST 
`endif
`endif //FPGA_SL4_SL8_GTY
`else
`define MTOP0 `DIE0
`define MTOP1 `DIE1
`endif
`else   // FPGA_ONLY } not {
`define MTOP0 `DIE0.`MTOP_INST
`define MTOP1 `DIE1.`MTOP_INST
`define MTOP0_ST_S_REGS `MTOP0.`REG_INST0
`define MTOP1_ST_S_REGS `MTOP1.`REG_INST0
`endif // }}

//`ifdef MAC_ONLY      // MAC_ONLY env in V3 env is almost same as full-size env, except that PCS/PHY are excluded
`define DATA_CHANNEL_NUM 16
`define MAC_DAT_WIDTH  310
`define D2D_RX_BUF_WIDTH 24
`define D2D_LATENCY 48
`define REG_TOP clci_pcs_reg_top
`ifdef HETERO_OT    // {{
`define CLCI_REG_TOP_DIE0 clci_pcs_ral_ucie_v1p1_hdio_sl4
`define CLCI_REG_TOP_DIE1 clci_pcs_ral_ucie_v1p1_hdio_sl8
`elsif SL4_SFDK
`define CLCI_REG_TOP_DIE0 clci_pcs_ral_ucie_v1p1_hdio_sl4
`define CLCI_REG_TOP_DIE1 clci_pcs_ral_ucie_v1p1_hdio_sl4
`elsif SL8_SNPS
`define CLCI_REG_TOP_DIE0 clci_pcs_ral_ucie_v1p1_hdio_sl8
`define CLCI_REG_TOP_DIE1 clci_pcs_ral_ucie_v1p1_hdio_sl8
`elsif TSMC_N6_H240
`define CLCI_REG_TOP_DIE0 clci_pcs_ral_ucie_v1p1_hdio_tn6
`define CLCI_REG_TOP_DIE1 clci_pcs_ral_ucie_v1p1_hdio_tn6
`elsif TSMC_N7_H240
`define CLCI_REG_TOP_DIE0 clci_pcs_ral_ucie_v1p1_hdio_tn7
`define CLCI_REG_TOP_DIE1 clci_pcs_ral_ucie_v1p1_hdio_tn7
`else
NOTE: if you reach here, there must be a config mistake with no process selected
`endif  // HETERO_OT}}

// macros used by reg tests, and on die0 only  {
`ifdef HETERO_OT
`define RAL_BLOCK_CLCI_PCS_BLOCK_UCIE_V1P1_HDIO ral_block_clci_pcs_block_ucie_v1p1_hdio_sl4
`define RAL_BLOCK_CLCI_PCS_CH_UCIE_V1P1_HDIO    ral_block_clci_pcs_ch_ucie_v1p1_hdio_sl4
`elsif TSMC_N6_H240
`define RAL_BLOCK_CLCI_PCS_BLOCK_UCIE_V1P1_HDIO ral_block_clci_pcs_block_ucie_v1p1_hdio_tn6
`define RAL_BLOCK_CLCI_PCS_CH_UCIE_V1P1_HDIO    ral_block_clci_pcs_ch_ucie_v1p1_hdio_tn6
`elsif TSMC_N7_H240
`define RAL_BLOCK_CLCI_PCS_BLOCK_UCIE_V1P1_HDIO ral_block_clci_pcs_block_ucie_v1p1_hdio_tn7
`define RAL_BLOCK_CLCI_PCS_CH_UCIE_V1P1_HDIO    ral_block_clci_pcs_ch_ucie_v1p1_hdio_tn7
`elsif SL4_SFDK
`define RAL_BLOCK_CLCI_PCS_BLOCK_UCIE_V1P1_HDIO ral_block_clci_pcs_block_ucie_v1p1_hdio_sl4
`define RAL_BLOCK_CLCI_PCS_CH_UCIE_V1P1_HDIO    ral_block_clci_pcs_ch_ucie_v1p1_hdio_sl4
`elsif SL8_SNPS
`define RAL_BLOCK_CLCI_PCS_BLOCK_UCIE_V1P1_HDIO ral_block_clci_pcs_block_ucie_v1p1_hdio_sl8
`define RAL_BLOCK_CLCI_PCS_CH_UCIE_V1P1_HDIO    ral_block_clci_pcs_ch_ucie_v1p1_hdio_sl8
`else
NOTE: if you reach here, there must be a config mistake with no process selected
`endif
// macros used by reg tests only  }

`define REG_TOP clci_pcs_reg_top
`define CLCI_REG_TOP clci_pcs_ral_ucie_v1p1_hdio
`define MTOP_WRAP_HIER_IN_CLCI u_clci_ucie_s
`define POST_MAC `MAC_PROTOCOL``post_mac2201_top
`define POST_MAC_INST u_post_mac2201_top_inst
`define MAC_TOP_INST u_clci_mp_top

`ifdef TSMC_N7 // {{
`define SPHY_HIER_BASE `MTOP_INST.u_CLCI_LPHY_TN7_inst
`define LPHY_INST0 u_CLCI_LPHY_TN7_inst0
`define LPHY_INST1 u_CLCI_LPHY_TN7_inst1
`define SPHY_INST u_CLCI_SPHY2_TN7
`define SPHY_INST0 u_CLCI_LPHY_TN7_inst0.`SPHY_INST
`define SPHY_INST1 u_CLCI_LPHY_TN7_inst1.`SPHY_INST
`elsif SL_MACRO // } TSMC_N7 {
`define SPHY_HIER_BASE `MTOP_INST.u_CLCI_LPHY_`SL_MACRO``_inst
`define LPHY_INST0 u_CLCI_LPHY_`SL_MACRO``_inst0
`define LPHY_INST1 u_CLCI_LPHY_`SL_MACRO``_inst1
`ifdef SL4_SFDK
`define SPHY_INST u_CLCI_SPHY2_`SL_MACRO``
`else
`define SPHY_INST u_CLCI_SPHY1_`SL_MACRO``
`endif
`define SPHY_INST0 u_CLCI_LPHY_`SL_MACRO``_inst0.`SPHY_INST
`define SPHY_INST1 u_CLCI_LPHY_`SL_MACRO``_inst1.`SPHY_INST
`endif  // TSMC_N7 }}
`define ADPT_INST0 u_clci_ucie_adapter_inst0
`define ADPT_INST1 u_clci_ucie_adapter_inst1

`ifdef TSMC_N6_H240
`define PMD_TOP ssttx_cmlrx_16lane_top_ew
`else 
`define PMD_TOP ssttx_cmlrx_atop_block_os_atop_s8_v2
`endif
//`define PCS_TOP_INST `MTOP_INST.u_clci_lphy_pcs_top

`ifndef FPGA_ONLY
`define PMD_TOP0_INST `MTOP_INST.`SPHY_INST0.u_pma_top
`define PCS_TOP_INST0 `MTOP_INST.`LPHY_INST0.u_clci_lphy_pcs_top
`define ADPT_TOP_INST0 `MTOP_INST.`ADPT_INST0
`define PMD_TOP1_INST `MTOP_INST.`SPHY_INST1.u_pma_top
`define PCS_TOP_INST1 `MTOP_INST.`LPHY_INST1.u_clci_lphy_pcs_top
`define ADPT_TOP_INST1 `MTOP_INST.`ADPT_INST1
`else
`define PMD_TOP0_INST `SPHY_INST0.u_pma_top
`define PCS_TOP_INST0 `LPHY_INST0.u_clci_lphy_pcs_top
`define PMD_TOP1_INST `SPHY_INST1.u_pma_top
`define PCS_TOP_INST1 `LPHY_INST1.u_clci_lphy_pcs_top
`ifdef FPGA_GTY
`define ADPT_TOP_INST0 `FPGA_GTY_CLCI_INST.`ADPT_INST0
`define ADPT_TOP_INST1 `FPGA_GTY_CLCI_INST.`ADPT_INST1
`else
`define ADPT_TOP_INST0 `ADPT_INST0
`define ADPT_TOP_INST1 `ADPT_INST1
`endif
`endif

`define CLCI_MCU_INST u_clci_mcu_subsys_inst
`define TOP0_MCU `MTOP0.`CLCI_MCU_INST
`define TOP1_MCU `MTOP1.`CLCI_MCU_INST
`define TOP0_LOCCTRL `TOP0_MCU.u_local_ctrl
`define TOP1_LOCCTRL `TOP1_MCU.u_local_ctrl

`define DEC_DIE0 `TOP0_MCU.u_cpu_core.swerv.dec
`ifdef GTECH  // {{
`define CLCI_MCU_RAM `CLCI_MCU_INST.u_sram_32KB
`define CLCI_MCU_ROM `CLCI_MCU_INST.u_rom_32KB
`else // } -> non-GTECH {
`define CLCI_MCU_RAM `CLCI_MCU_INST.u_sram_32KB
`ifdef FPGA_ONLY
`define CLCI_MCU_ROM `CLCI_MCU_INST.u_srom_32KB
`else
`define CLCI_MCU_ROM `CLCI_MCU_INST.u_rom_32KB
`endif
`endif //GTECH  }}
`define SB_TOP_INST0 u_sideband_top_inst0
`define SB_TOP_INST1 u_sideband_top_inst1
`define SB_LINK_INST0 `SB_TOP_INST0.u_sideband_link_layer
`define SB_LINK_INST1 `SB_TOP_INST1.u_sideband_link_layer
`define SB_PHY_INST0 `SB_TOP_INST0.u_sb_physical_layer
`define SB_PHY_INST1 `SB_TOP_INST1.u_sb_physical_layer
`define SB_ADP_INST0 `SB_TOP_INST0.sb_adapter_layer_inst
`define SB_ADP_INST1 `SB_TOP_INST1.sb_adapter_layer_inst

`define REG_INST0 u_st_s_reg_inst0
`define REGMODEL_DIE0 regmodel_top.regmodel_die0
`define REGMODEL_DIE1 regmodel_top.regmodel_die1
`define PHY_MOD `SPHY

`define CLKRST_INST u_clk_rst
`define PLL_INST `CLKRST_INST.u_pll

`define MTOP_WRAP `MAC_PROTOCOL``clci_ucie_s
//`define MTOP_WRAP_INST u_clci_ucie_s
//`define MTOP `MTOP_WRAP
`ifdef GATESIM
//`define MTOP GATE_clci_mp_2ace_axi_wrapper_clci_ucie_s_17_16_1_13_32_ac_3_5_16_1_7_0_20_0_clci_mp_2ace_axi_wrapper
`endif

`define REG_INST1 u_st_s_reg_inst1

`define CLCI_AXI_OUTSTANDING 32
`define EXT_CHANNEL_NUM 18
`define MAC_TX_DATA_WIDTH 1250
`ifdef TSMC_N7
`define ARB_DATA_W 308
`else
`define ARB_DATA_W 308
`endif

`ifndef HETERO  // {{
//`ifndef FPGA_SL4_SL8_GTY //{{ FPGA Project
`define TOP0_LPHY0 `MTOP0.`LPHY_INST0
`define TOP1_LPHY0 `MTOP1.`LPHY_INST0
`define TOP0_LPHY1 `MTOP0.`LPHY_INST1
`define TOP1_LPHY1 `MTOP1.`LPHY_INST1
`define TOP0_SPHY0 `MTOP0.`SPHY_INST0
`define TOP1_SPHY0 `MTOP1.`SPHY_INST0
`define TOP0_SPHY1 `MTOP0.`SPHY_INST1
`define TOP1_SPHY1 `MTOP1.`SPHY_INST1
`elsif HETERO_N6 // not } HETERO_N6  {
// for HETERO tb, DIE0/DIE1 must be SL8/SL4 separately
`define TOP0_LPHY0 `MTOP0.`LPHY_INST0
`define TOP1_LPHY0 `MTOP1.`LPHY_INST0
`define TOP0_LPHY1 `MTOP0.`LPHY_INST0
`define TOP1_LPHY1 `MTOP1.`LPHY_INST0
`define TOP0_SPHY0 `TOP0_LPHY0.u_CLCI_SPHY2_TN7
`define TOP1_SPHY0 `TOP1_LPHY0.u_CLCI_SPHY2_TN7
`define TOP0_SPHY1 `TOP0_LPHY1.u_CLCI_SPHY2_TN7
`define TOP1_SPHY1 `TOP1_LPHY1.u_CLCI_SPHY2_TN7
`else // } HETERO_OT SL4/SL8 {
// for HETERO tb, DIE0/DIE1 must be SL8/SL4 separately
`define TOP0_LPHY0 `MTOP0.u_CLCI_LPHY_SL4_inst0
`define TOP1_LPHY0 `MTOP1.u_CLCI_LPHY_SL8_inst0
`define TOP0_LPHY1 `MTOP0.u_CLCI_LPHY_SL4_inst0
`define TOP1_LPHY1 `MTOP1.u_CLCI_LPHY_SL8_inst0
`define TOP0_SPHY0 `TOP0_LPHY0.u_CLCI_SPHY2_SL4
`define TOP1_SPHY0 `TOP1_LPHY0.u_CLCI_SPHY1_SL8
`define TOP0_SPHY1 `TOP0_LPHY1.u_CLCI_SPHY2_SL4
`define TOP1_SPHY1 `TOP1_LPHY1.u_CLCI_SPHY1_SL8
//`endif // FPGA_SL4_SL8_GTY }}
`endif // HETERO }}
`define DIE0__PCS_TOP_INST0 `TOP0_LPHY0.u_clci_lphy_pcs_top
`define DIE1__PCS_TOP_INST0 `TOP1_LPHY0.u_clci_lphy_pcs_top
`define DIE0__PCS_TOP_INST1 `TOP0_LPHY1.u_clci_lphy_pcs_top
`define DIE1__PCS_TOP_INST1 `TOP1_LPHY1.u_clci_lphy_pcs_top
`define TOP0_ADP0 `MTOP0.`ADPT_INST0
`define TOP1_ADP0 `MTOP1.`ADPT_INST0
`define TOP0_ADP1 `MTOP0.`ADPT_INST1
`define TOP1_ADP1 `MTOP1.`ADPT_INST1

`define PMD_TOP0_PHY0 `TOP0_SPHY0.u_pma_top
`define PMD_TOP1_PHY0 `TOP1_SPHY0.u_pma_top
`define PMD_TOP0_PHY1 `TOP0_SPHY1.u_pma_top
`define PMD_TOP1_PHY1 `TOP1_SPHY1.u_pma_top

`ifdef GATESIM
`define PCS_RX_PHASE              'h0    // PCS RX_PHASE setting. TODO: this needs update for each project based on routing result and freq setting.
`define PMD_TX_CLK_INV            'h0f00    // PMD TX_CLK setting. Use this to align all pmd txdata to TB's pmd_tx_clk. TODO: this needs update for each project based on routing result.
`define PMD_RX_CLK_INV            17'h0    // PMD RX_CLK setting. TODO: this needs update for each project based on routing result.
`else
`define PCS_RX_PHASE              'h0
`define PMD_TX_CLK_INV            'h0
`define PMD_RX_CLK_INV            17'h0
`endif

