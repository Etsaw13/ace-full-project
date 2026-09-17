// =====================================================================
// ace_sequences.sv - 序列库 (三用例各持一条序列, 由 tests/ 下同名 test 启动)
//   ace_write_read_seq : 逐行 写(WU)→读(RS)→独占读(RU)  ← ace_smoke_test
//   ace_snoop_seq      : 三轮读, 走两条 P2 闭环         ← ace_snoop_test
//                        (RS 铺行 → RS 重读=共享闭环 → RU 重读=脏行闭环)
//   ace_random_seq     : 随机合法订单 N 条              ← ace_random_test
// =====================================================================
class ace_base_seq extends uvm_sequence #(ace_order_item);

  `uvm_object_utils(ace_base_seq)

  bit [ADDR_W-1:0] base_addr = 44'h2000_0000;   // 与 tb_top 的 cfg_base_addr 一致
  int              n_lines   = 4;               // 激励窗口行数 (与目录/ cache 同规格)

  function new(string name = "ace_base_seq");
    super.new(name);
  endfunction

  // 便捷: 按指定类型/地址/读属性 生成一笔订单并递交给 driver
  //   (写订单的 awsnoop 由 item 约束决定: WU/WLU 随机; 读订单的 arsnoop 用传入值)
  task do_order(bit is_wr, bit [ADDR_W-1:0] a,
                bit [3:0] arsnoop = ARSNOOP_READ_SHARED);
    ace_order_item it = ace_order_item::type_id::create("it");
    start_item(it);
    if (!it.randomize() with {
          it.write == is_wr;
          it.addr  == a;
          if (is_wr) { it.arsnoop == 0; it.awsnoop == AWSNOOP_WRITE_UNIQUE; }
          else       { it.arsnoop == arsnoop; }
        })
      `uvm_error("SEQ", "randomize 失败")
    finish_item(it);
  endtask

endclass


// ---------------------------------------------------------------------
// ace_write_read_seq (ace_smoke_test 用): 逐行 写→读→独占读
//   每行三笔: W(WU) → R(RS) → R(RU)。
//   RU 应答带 PassDirty → 确定性制造 UD 行, home 随后对其出 CleanInvalid
//   → 确定性覆盖 A 侧 S_CD / B 侧 H_WAIT_CD (P2 新增状态)
// ---------------------------------------------------------------------
class ace_write_read_seq extends ace_base_seq;

  `uvm_object_utils(ace_write_read_seq)

  function new(string name = "ace_write_read_seq");
    super.new(name);
  endfunction

  task body();
    for (int l = 0; l < n_lines; l++) begin
      do_order(1, base_addr + l * 16);                       // 写 (WU)
      do_order(0, base_addr + l * 16, ARSNOOP_READ_SHARED);  // 读回 (RS)
      do_order(0, base_addr + l * 16, ARSNOOP_READ_UNIQUE);  // 独占读 (RU→UD)
    end
  endtask

endclass


// ---------------------------------------------------------------------
// ace_snoop_seq (ace_snoop_test 用): 三轮读, 各驱动一条 P2 闭环
//   第一轮 RS 铺行   : 建立目录 (home 间隔中出题质询)
//   第二轮 RS 重读   : 目录命中 → RRESP|IsShared → A 行落 SC  (共享闭环)
//   第三轮 RU 重读   : RRESP|PassDirty → A 行落 UD            (脏行闭环→CD 回流)
// ---------------------------------------------------------------------
class ace_snoop_seq extends ace_base_seq;

  `uvm_object_utils(ace_snoop_seq)

  function new(string name = "ace_snoop_seq");
    super.new(name);
  endfunction

  task body();
    for (int l = 0; l < n_lines; l++)
      do_order(0, base_addr + l * 16, ARSNOOP_READ_SHARED);
    for (int l = 0; l < n_lines; l++)
      do_order(0, base_addr + l * 16, ARSNOOP_READ_SHARED);
    for (int l = 0; l < n_lines; l++)
      do_order(0, base_addr + l * 16, ARSNOOP_READ_UNIQUE);
  endtask

endclass


// ---------------------------------------------------------------------
// ace_random_seq (ace_random_test 用): 随机合法订单流
//   每笔: 读写约 3:7 随机; 地址限定 4 行窗口; 读属性/写属性由 item 约束随机
//   (RU 概率出现 → UD 行概率产生; 覆盖收敛靠多轮/多 seed)
// ---------------------------------------------------------------------
class ace_random_seq extends ace_base_seq;

  `uvm_object_utils(ace_random_seq)

  rand int unsigned n_orders = 50;

  constraint c_n { n_orders inside {[10:200]}; }

  function new(string name = "ace_random_seq");
    super.new(name);
  endfunction

  task body();
    ace_order_item it;
    for (int i = 0; i < n_orders; i++) begin
      it = ace_order_item::type_id::create("it");
      start_item(it);
      if (!it.randomize() with {
            it.addr >= base_addr;
            it.addr <= base_addr + n_lines*16 - 1;
            it.write dist { 1 := 3, 0 := 7 };   // 写:读 ≈ 3:7
          })
        `uvm_error("SEQ", "randomize 失败")
      finish_item(it);
    end
  endtask

endclass
