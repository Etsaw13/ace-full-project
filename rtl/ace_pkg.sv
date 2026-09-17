// =====================================================================
// ace_pkg.sv - ACE 协议层激励模块 共享参数 / 状态定义
// 依据: doc/design_report.md (初版方案 §3/§4/§5)
// 函数见 ace_funcs.svh (include 方式, iverilog 兼容)
// =====================================================================
`ifndef ACE_PKG_SV
`define ACE_PKG_SV

package ace_pkg;

  // ---------------- 位宽 (与 CLCI ace_slv2/ace_mst2 引脚一致) ----------------
  parameter int ADDR_W   = 44;
  parameter int DATA_W   = 128;
  parameter int STRB_W   = DATA_W/8;    // 16
  parameter int ID_W     = 16;
  parameter int LEN_W    = 8;
  parameter int RRESP_W  = 4;
  parameter int CRRESP_W = 5;
  parameter int ACVID_W  = 15;

  // ---------------- cache / 内存规格 ----------------
  parameter int N_LINES   = 4;                 // 全相联行数
  parameter int LINE_SHIFT = 4;                // 行大小 16B = 1 拍数据
  parameter int TAG_W     = ADDR_W - LINE_SHIFT; // 40

  // ---------------- 行状态 (4 态: I / SC / UC / UD) ----------------
  parameter logic [1:0] ST_I  = 2'd0;   // Invalid     手里没有
  parameter logic [1:0] ST_SC = 2'd1;   // Shared Clean 共有+干净
  parameter logic [1:0] ST_UC = 2'd2;   // Unique Clean 独占+干净
  parameter logic [1:0] ST_UD = 2'd3;   // Unique Dirty 独占+脏 (全通道点亮升级)

  // ---------------- ARSNOOP / AWSNOOP 编码 ----------------
  parameter logic [3:0] ARSNOOP_READ_ONCE     = 4'b0000;
  parameter logic [3:0] ARSNOOP_READ_SHARED   = 4'b0001;
  parameter logic [3:0] ARSNOOP_READ_UNIQUE   = 4'b0111;
  parameter logic [3:0] ARSNOOP_CLEAN_INVALID = 4'b1001;
  parameter logic [3:0] ARSNOOP_MAKE_INVALID  = 4'b1101;
  parameter logic [2:0] AWSNOOP_WRITE_UNIQUE      = 3'b000;
  parameter logic [2:0] AWSNOOP_WRITE_LINE_UNIQUE = 3'b001;

  // ---------------- CRRESP 位位置 ----------------
  parameter int CR_DT         = 0;   // DataTransfer
  parameter int CR_ERR        = 1;
  parameter int CR_PASSDIRTY  = 2;
  parameter int CR_ISSHARED   = 3;
  parameter int CR_WASUNIQUE  = 4;

  // ---------------- RRESP 位位置 ([1:0]=AXI 响应码, 高 2 位为 ACE 新增) --
  parameter int RR_PASSDIRTY  = 2;   // RRESP[2] 数据脏, 责任移交接收方
  parameter int RR_ISSHARED   = 3;   // RRESP[3] 数据为共享副本

endpackage

`endif
