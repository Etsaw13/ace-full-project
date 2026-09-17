# ace-full-project — ACE 协议层激励模块工程（使用指南）

## 1. 工程目录结构

```
ace-full-project/
├── rtl/                      设计 RTL（SystemVerilog 综合子集）
│   ├── ace_pkg.sv                共享包: 位宽/行状态(I/SC/UC/UD)/编码/CRRESP·RRESP 位
│   ├── ace_funcs.svh             公共函数: PRBS/种子/行地址/码型函数族
│   │                             （include 进各 module 体内; UVM 类中不可用）
│   ├── module_a.sv               Module A: 场景发生器+数据面+cache(4态+快照)+snoop响应器(+CD)
│   └── module_b.sv               Module B: slave 引擎+home(出题/对账/CD收货)+目录+内存+RRESP标签
│
├── tb/  +  sim/              【环境一】直连 smoke（本地 iverilog / 服务器 VCS）
│   ├── tb_direct.sv              A↔B 直连, 内部激励自跑, 轻量 SVA, X 检测器, 观测计数
│   ├── run_local.sh              本地一键: 编译一次, 跑 4 码型矩阵, 逐模式判定
│   ├── run_vcs.sh                服务器 VCS 版: bash sim/run_vcs.sh [码型]
│   ├── filelist.f / Makefile
│   └── decl_check.py             声明-使用顺序扫描器 (VCS IND 预防, 上服务器前跑)
│
├── uvm/                      【环境二】独立 UVM（服务器 VCS）
│   ├── tb/ace_if.sv              订单接口 + 观测接口 + FSM状态/RRESP观测 + 码型
│   ├── tb/tb_uvm_top.sv          顶层 (A↔B 直连, cfg_ord_ext=1, 激励来自 UVM driver)
│   ├── env/                      ace_order_item / driver / monitor / agent /
│   │                             scoreboard / coverage(订单+质询+FSM状态+RRESP标签) / env
│   ├── seq/ace_sequences.sv      三条剧本: write_read_seq / snoop_seq / random_seq
│   ├── tests/ace_tests.sv        三个用例: ace_smoke / ace_snoop / ace_random _test
│   └── sim/run_uvm_vcs.sh        一键: bash uvm/sim/run_uvm_vcs.sh <test> [码型]
│
├── passive_vip/              【环境三】UVM + Synopsys VIP 组合（服务器 VCS）
│   ├── top.sv / top_test.sv      组合顶层 (tb_uvm_top + VIP bind 三件套)
│   ├── env/cust_svt_axi_passive_system_configuration.sv
│   ├── tests/ts.base_test.sv     ace_vip_base_test: func_env + vip_env 双裁判
│   ├── gen_dut_f.sh              DUT 文件列表 (路径自适应)
│   ├── run_passive_vip.sh        一键: bash passive_vip/run_passive_vip.sh <test> [码型]
│
└── README.md                 本文件
```

三套环境共用同一份 RTL；本地 iverilog 的回归结果对 UVM/VIP 版同样适用
（SVA 断言除外——iverilog 不编译，需在服务器 VCS 上生效）。

---

## 2. 各环境运行方法

### 环境一：本地 iverilog（最快反馈，码型矩阵）

```bash
bash sim/run_local.sh          # 编译一次, 自动跑 DATA_MODE=0..3 全矩阵
bash sim/run_local.sh 2        # 只跑指定码型
```
判据：`PASS 码型: 0 1 2 3` + `SMOKE PASS`。日志按码型分文件 `sim/run_local_mode<N>.log`。

### 环境二：服务器 VCS 直连 smoke（SVA 断言真实执行）

```bash
bash sim/run_vcs.sh            # 默认码型 0
bash sim/run_vcs.sh 2          # 指定码型
```
判据：`SMOKE PASS (data_mode=N)`。日志 `sim/run_mode<N>.log`。
上服务器前先本地跑 `python3 sim/decl_check.py .`（VCS 声明顺序预防检查）。

### 环境三：服务器独立 UVM（三用例 × 四码型）

```bash
bash uvm/sim/run_uvm_vcs.sh ace_smoke_test        # 默认码型 0
bash uvm/sim/run_uvm_vcs.sh ace_random_test 2     # 第二参数 = 码型
```
判据：`=== UVM <test> PASS ===`。日志 `sim/run_uvm.log`；覆盖率看 COV 明细块（见第 5 节）。

### 环境四：服务器 UVM + Passive VIP 组合（双裁判）

```bash
bash passive_vip/run_passive_vip.sh ace_smoke_test     # 默认码型 0
bash passive_vip/run_passive_vip.sh ace_random_test 1  # 第二参数 = 码型
```
判据（脚本自动判定）：`PASSIVE_VIP_TEST_PASS`（= scoreboard PASS + TEST_PASS +
UVM_ERROR:0 + UVM_FATAL:0 四重 grep）。日志 `passive_vip_mode<N>.log`。
首次运行自动创建 VIP 骨架（需 DESIGNWARE_HOME，可用环境变量覆盖；
两个脚本均路径自适应，工程放任何位置免改路径）。

---

## 3. 数据码型选择

期望数据 = **f(地址)**，与事务顺序无关；码型决定 f 的形状，**A/B 两侧必须同配**
（tb 用同一变量驱动；配错的症状 = 全盘数据错）。

| mode | 名称 | 生成式 f(行,拍) | 抓什么故障 |
|---|---|---|---|
| 0（默认）| PRBS | prbs128(hash(行,拍,cfg_prbs_code)) | 随机位错误（通用兜底）|
| 1 | 全同字节 | {16{cfg_xcode}} 铺满 128b | 信号线粘 0 / 粘 1 |
| 2 | 行号+拍号序列号 | {4{行[15:0], 拍, 行[23:16]}} | 数据送错行、拍序错乱 |
| 3 | 走 1 码 | one-hot 按 (行低位+拍) 循环左移 | 位滑动（线序/位序接线错）|

**设置方式（三通道，优先级 plusarg > define > 默认 0）**：

| 入口 | 机制 | 用法 |
|---|---|---|
| 脚本参数（推荐）| 各运行脚本的第 N 参数 | 自动转成下面的机制 |
| +DATA_MODE=N | 运行期 plusarg | simv 直跑时用 |
| +define+DATA_MODE=N | 编译期宏 | VIP 组合环境用（不赌骨架 runner 的 plusarg 透传）|

⚠️ **mode 是运行期常量**：一次仿真只能一个码型。中途切换会使 B 内存/快照里的
旧码型数据与 A 的新期望值失配 → 假报错。要换码型 = 重跑一次仿真（脚本的矩阵
模式就是为此设计）。

---

## 4. UVM 用例介绍

三个 test 共用同一测试基类，**区别只在启动哪条剧本（sequence）**：

| test（+UVM_TESTNAME）| 剧本 | 内容 | 定位 |
|---|---|---|---|
| `ace_smoke_test` | ace_write_read_seq | 每行三笔：写(WU)→读(RS)→独占读(RU)，4 行 12 笔 | 数据面地基回归（每次改 RTL 第一反应）；RU 确定性制造 UD 行 |
| `ace_snoop_test` | ace_snoop_seq | 三轮读：RS 铺行 → RS 重读 → RU 重读 | 一致性闭环演练：第二轮触发 IsShared 共享闭环，第三轮触发脏行 CD 闭环 |
| `ace_random_test` | ace_random_seq | 50 笔随机合法订单（读写≈3:7，属性/地址随机）| 随机交错压力 + 覆盖收敛（多轮多 seed）|

三个 test 都会伴随 home 自动出题质询；收尾等待 500 拍供 home 完成最后的质询
与 CD 收货。完整用例空间 = **3 test × 4 码型 = 12 格**。
命令行上的名字（`+UVM_TESTNAME`）选的是 test；剧本由 test 的 run_phase 内部
创建并启动——考试与试卷分离，可自由组合。

---

## 5. 覆盖率查看

每次 UVM 运行结束时日志里有 `COV` 明细块（report_phase 自动打印）：

```bash
grep "COV" sim/run_uvm.log              # 或 passive_vip_mode<N>.log
```

内容分两部分：

```
[cg_ord  ] write/arsn/awsn/dmode/aline 各维度百分比 + 交叉
[cg_snoop] 质询类型 × CRRESP 应答值
[cg_fsm  ] 四个 FSM 的状态覆盖 (st_a/sn_a/st_b/hs_b)
[cg_r    ] RRESP 标签 (okay/PassDirty/IsShared)
[bin 命中位图] 每个维度的逐 bin 命中情况, 1=踩到 0=未踩到, 位序与标签一致
```

读法示例：`hs_b [H_IDLE H_SEND_AC H_WAIT_CR H_WAIT_CD H_GAP] = 11011`
→ H_SEND_AC 未被踩到（当前推断：防御态不可达，此位图即实证数据）。
单次仿真只含一个码型 → `dmode` 位图单次只亮 1 位；码型维度的收敛看 4 次矩阵运行。
bin 级 HTML 报告（可选）：`urg -dir sim/simv.vdb -report urg_report`。

---

## 6. 数据流演绎（五条核心流程）

### 6.1 写事务（WriteUnique / WriteLineUnique）

```
A: 接单 → AW(snoop=WU或WLU) → W: 码型数据 f(行地址) → 等 B
B: 收AW → 校验 wdata==f(地址) → 写内存 → BRESP=OKAY → 等 wack
A: 收B → WACK(延迟一拍,单周期)
落态: A 行 = I(WU, 写完不留) 或 UC+快照(WLU, 直写式保留)；B 目录 = 销账 或 UC
```

### 6.2 读事务（ReadOnce / ReadShared / ReadUnique）

```
A: 接单 → AR(snoop=RO/RS/RU) → 等 R
B: 取数(内存有给真数,空行现算 f(地址)) + 贴 RRESP 标签:
     RU → OKAY|PassDirty        (制造脏行)
     RS 且目录已有该行 → OKAY|IsShared
     其余 → OKAY
A: 收 R: 校验数据==f(地址) + 按 RRESP 落态:
     RU+PassDirty → UD+快照 / RS+IsShared → SC+快照 / 其余 → UC+快照
 → RACK；B 在 rack 时刻目录同步登记 —— 与 A 的行状态逐格一致
```

### 6.3 质询-应答（干净行 SC/UC）

```
B home: 目录扫描挑行, 按状态选型(RS/MI/CI/RO 四类轮转) → AC(acvid 递增)
   [A 忙则保持; A 主事务在途时 acready 门控推迟]
A: AC 握手 → 查 cache → CRRESP 决策表 → CR
     SC+RS/RO→IsShared(留副本)  UC+RS→WasUnique|IsShared(降级)
     UC+RO/RU→WasUnique(作废)   SC/UC+CI/MI→0(作废)
B: CR 到达 → 与期望逐位比对(不符置 err_cr_mismatch) → 销账/降级 → 间隔后下一题
```

### 6.4 质询-应答-交数据（脏行，闭环一）

```
前提: A 持有 UD 行(由 RU+PassDirty 制造)
B home: 目录见 UD → 出题 CleanInvalid(UD 行固定题型) → AC
A: 查 cache=UD → CR: DT|PassDirty|WasUnique → 行作废(快照保留)
   → S_CD: CD 单拍交整行(cddata=快照, cdlast=1)
B: H_WAIT_CD: 收货三件事 → ①码型校验(err_cd_data) ②写回内存 ③目录销账
```

### 6.5 同行补读（共享闭环二）

```
A 场景发生器: 主读完成后同行补一笔 ReadShared (RU 主读不补——保护 UD 行存活)
B: RS 且目录命中 → RRESP|IsShared → A 行落 SC
B home: 后续质询该行 → A 应答 CRRESP|IsShared(留副本) → 目录降 SC
```

---

## 7. 错误标志速查

| 模块 | 信号 | 类别 | 含义 |
|---|---|---|---|
| A | err_rd_data | 数据校验 | 读回数据 ≠ 期望码型 |
| A | err_rsp | 协议应答 | BRESP/RRESP 不合法、PD/IS 错位、acvid=X |
| B | err_wr_data | 数据校验 | 收写数据 ≠ 期望码型 |
| B | err_cd_data | 数据校验 | CD 收货数据 ≠ 期望码型 |
| B | err_cr_mismatch | 协议对账 | A 的 CRRESP ≠ 目录预期 |
| B | err_snoop_timeout | **超时** | home 等 CR/CD 超时（当前唯一超时类输出）|

两侧汇总：`o_any_err`；`cfg_err_inject` 可反验校验器（[0]=BRESP 回 SLVERR、
[1]=期望应答取反——"该报错的必须报"）。

---

