// =====================================================================
// ace_if.sv - UVM 验证接口
//   驱动侧: 外部订单 (driver 拉动, module_a 的 ord_* 端口)
//   观测侧: 质询通道/错误标志/计数器 (monitor 与 scoreboard 采样)
// =====================================================================
`ifndef ACE_IF_SV
`define ACE_IF_SV

interface ace_if (input logic aclk, input logic areset_n);
  import ace_pkg::*;

  // ---- 外部订单 (driver → module_a) ----
  logic                ord_valid;
  logic                ord_ready;
  logic                ord_write;
  logic [3:0]          ord_arsnoop;
  logic [2:0]          ord_awsnoop;
  logic                ord_awunique;
  logic [ADDR_W-1:0]   ord_addr;

  // ---- 被动观测 (tb_top 连接) : 质询通道 ----
  logic                acvalid, acready, crvalid, crready;
  logic [3:0]          acsnoop;
  logic [CRRESP_W-1:0] crresp;
  logic                rack, wack;

  // ---- 被动观测 : DUT 状态 ----
  logic                any_err_a, any_err_b;
  logic                err_rd_data_a, err_rsp_a, err_wr_prbs_a;
  logic                err_wr_data_b, err_cd_data_b, err_cr_mismatch_b, err_snoop_timeout_b;
  logic [31:0]         cnt_tx, cnt_snoop_a, cnt_snoop_b;
  logic [31:0]         cnt_wr, cnt_rd;

  // ---- 被动观测 : R 通道响应标签 (P2: 高 2 位 = IsShared/PassDirty) ----
  logic                rvalid, rready;
  logic [RRESP_W-1:0]  rresp;

  // ---- 被动观测 : FSM 状态 (tb_top 层次引用, 供状态覆盖) ----
  logic [2:0]          st_a;    // A 主 FSM   M_IDLE..M_R_R
  logic [1:0]          sn_a;    // A snoop    S_IDLE/S_CR/S_CD
  logic [1:0]          st_b;    // B slave    B_IDLE..B_R
  logic [2:0]          hs_b;    // B home     H_IDLE..H_GAP

  // ---- P3-1 码型 (tb_top 经 +DATA_MODE 设置, 运行期常量) ----
  //      供 coverage 采样与测试报告; 运行中途不可切换 (内存/快照与期望值失配)
  logic [1:0]          cfg_data_mode;
  logic [7:0]          cfg_xcode;

endinterface

`endif
