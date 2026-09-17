// =====================================================================
// ace_order_item.sv - 外部订单事务 (driver → module_a)
// =====================================================================
class ace_order_item extends uvm_sequence_item;

  rand bit                write;      // 1=写 0=读
  rand bit [ADDR_W-1:0]   addr;       // 行对齐地址
  rand bit [3:0]          arsnoop;    // 读属性
  rand bit [2:0]          awsnoop;    // 写属性
  rand bit                awunique;   // 写独占标记 (本设计恒 0)

  constraint c_legal {
    // 读属性限定在支持的三种 (RO/RS/RU)
    !write -> arsnoop inside {ARSNOOP_READ_ONCE, ARSNOOP_READ_SHARED,
                              ARSNOOP_READ_UNIQUE};
    // 非当前方向的属性也固定，避免随机值泄漏到下一层。
    !write -> {awsnoop == AWSNOOP_WRITE_UNIQUE; awunique == 1'b0;}
    // 写路径: WU / WLU 均合法 (WLU 直写式, 行保留 UC 并刷新快照)。
    write -> {arsnoop == ARSNOOP_READ_ONCE;
              awsnoop inside {AWSNOOP_WRITE_UNIQUE,
                              AWSNOOP_WRITE_LINE_UNIQUE};
              awunique == 1'b0;}
    // (地址范围由序列约束, 基址与 tb 的 cfg_base_addr 保持一致)
  }

  `uvm_object_utils_begin(ace_order_item)
    `uvm_field_int (write,    UVM_ALL_ON)
    `uvm_field_int (addr,     UVM_ALL_ON)
    `uvm_field_int (arsnoop,  UVM_ALL_ON)
    `uvm_field_int (awsnoop,  UVM_ALL_ON)
    `uvm_field_int (awunique, UVM_ALL_ON)
  `uvm_object_utils_end

  function new(string name = "ace_order_item");
    super.new(name);
  endfunction

endclass
