// =====================================================================
// ace_funcs.svh - 模块内插入的公共函数 (include 方式, iverilog 兼容)
// 用法: 在 module 体内 `include "ace_funcs.svh"
//       (依赖端口 cfg_data_mode / cfg_prbs_code / cfg_xcode)
// 注意: 1) prbs31 多项式与参考工程 prbs31_generator.v 一致 (x^31+x^28+1)
//       2) 本文件**不加 include guard**——需要每个模块各展开一份
// =====================================================================

  // 单步移位: 左移一格, 反馈位 = b30 ^ b27
  function automatic logic [30:0] prbs_step(logic [30:0] s);
    prbs_step = {s[29:0], s[30] ^ s[27]};
  endfunction

  // 一拍生成整拍 128bit 数据: 串行展开 128 步 (综合时展开为纯组合异或树)
  function automatic logic [DATA_W-1:0] prbs128(logic [30:0] seed);
    logic [30:0]       s;
    logic [DATA_W-1:0] o;
    s = seed;
    for (int k = 0; k < DATA_W; k++) begin
      o[k] = s[30];
      s    = prbs_step(s);
    end
    prbs128 = o;
  endfunction

  // PRBS 种子: 行地址折叠 ^ 拍号 ^ 码型 —— 两端 (A/B) 必须逐位一致
  function automatic logic [30:0] prbs_seed(logic [TAG_W-1:0] line_addr,
                                            logic [7:0]       beat,
                                            logic [7:0]       code);
    prbs_seed = line_addr[30:0]
              ^ {3'b0, line_addr[39:33], line_addr[29:9]}
              ^ {23'b0, beat}
              ^ {23'b0, code};
  endfunction

  // 字节地址 -> 行地址
  function automatic logic [TAG_W-1:0] to_line(logic [ADDR_W-1:0] a);
    to_line = a[ADDR_W-1:LINE_SHIFT];
  endfunction

  // =====================================================================
  // P3-1 码型函数族: 全部地址自描述, 期望值 = f(地址), 与事务顺序无关
  // mode 属公共约定参数 (同 cfg_prbs_code), A/B 两侧必须同配
  // =====================================================================

  // mode=1 全同字节: cfg_xcode 复制铺满 128b (抓信号线粘 0/粘 1)
  function automatic logic [DATA_W-1:0] pat_xcode();
    pat_xcode = {16{cfg_xcode}};
  endfunction

  // mode=2 行号+拍号序列号: 4 个 32b lane, 每个字节位置都带行身份
  //   (抓数据送错行/拍序错乱; lane 内不放长串零, 避免高位粘 0 被期望值掩盖)
  function automatic logic [DATA_W-1:0] pat_seq(logic [TAG_W-1:0] line,
                                                logic [7:0]       beat);
    pat_seq = {4{line[15:0], beat, line[23:16]}};
  endfunction

  // mode=3 走 1 码: one-hot 按 (行低位+拍) 循环左移 (抓位滑动)
  function automatic logic [DATA_W-1:0] pat_walk1(logic [TAG_W-1:0] line,
                                                  logic [7:0]       beat);
    logic [7:0] sh;
    sh = line[6:0] + beat;
    pat_walk1 = {{(DATA_W-1){1'b0}}, 1'b1} << sh[6:0];
  endfunction

  // 某行某拍的期望数据: 按 cfg_data_mode 分发 (A/B 两侧同公式)
  function automatic logic [DATA_W-1:0] beat_data(logic [TAG_W-1:0] line,
                                                  logic [7:0]       beat);
    case (cfg_data_mode)
      2'd1:    beat_data = pat_xcode();
      2'd2:    beat_data = pat_seq(line, beat);
      2'd3:    beat_data = pat_walk1(line, beat);
      default: beat_data = prbs128(prbs_seed(line, beat, cfg_prbs_code));
    endcase
  endfunction
