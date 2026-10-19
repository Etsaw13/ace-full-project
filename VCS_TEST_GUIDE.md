# ACE/CLCI VCS 测试指南

本文记录当前已经验证通过的 VCS 测试方法，包括非 CLCI 的 Module A/Module B 直连测试，以及经过 CLCI 双 Die 链路的 DV ROM、RTL ROM 测试。

CLCI release 使用下面的扁平目录结构：

```text
clci_release_20261007/
├── ace-full-project/
├── dv/
├── fw/
├── sim/
└── src_all/
```

在 `clci_release_20261007` 根目录执行下面的初始化命令。上一级目录可以不同，不需要搜索或配置：

```bash
CLCI_ROOT="$(pwd -P)"
ACE_ROOT="${CLCI_ROOT}/ace-full-project"
SIM_ROOT="${CLCI_ROOT}/sim"
DV_ROOT="${CLCI_ROOT}/dv"
FW_ROOT="${CLCI_ROOT}/fw"
SRC_ALL_ROOT="${CLCI_ROOT}/src_all"

for required_dir in \
    "${ACE_ROOT}" "${SIM_ROOT}" "${DV_ROOT}" "${FW_ROOT}" "${SRC_ALL_ROOT}"; do
    [ -d "${required_dir}" ] || echo "找不到 ${required_dir}"
done

echo "CLCI_ROOT=${CLCI_ROOT}"
```

后续命令均使用这些变量，只依赖 release 内部目录结构，不依赖它的上一级路径。

## 1. 测试范围

当前回归覆盖以下功能：

- Module A 和 Module B 的 APB 配置；
- APB `DATA_CFG` 写入和读回；
- Single Write；
- Single Read；
- 可配置拍数的Burst Write；
- 可配置拍数的Burst Read；
- ACE AW、W、B、AR、R 通道；
- ACE AC、CR、CD 一致性通道；
- RACK、WACK；
- ReadShared、MakeInvalid、CleanInvalid、ReadOnce snoop；
- PassDirty、IsShared 响应；
- PRBS31、固定字节、Sequence、Walking-1、PRBS23、PRBS10 数据模式；
- 事务排空、错误状态和事务计数检查。

## 2. DATA_MODE 定义

| DATA_MODE | 数据类型 |
|---:|---|
| 0 | PRBS31 |
| 1 | 固定字节 XCODE |
| 2 | Sequence |
| 3 | Walking-1 |
| 4 | PRBS23 |
| 5 | PRBS10 |

每次仿真只选择一种 `DATA_MODE`。完整回归需要分别运行模式 `0` 到 `5`。

## 3. ACE 协议传输类型

`DATA_MODE` 只决定数据内容，协议传输类型由 Module A 的 APB `DATA_CFG[27:24]` 配置。当前测试分别配置并检查以下四种基本事务：

| 类型 | 地址通道 | LEN | 数据拍数 | 完成流程 | 日志字段 |
|---|---|---:|---:|---|---|
| Single Write | AW | `AWLEN=0` | 1个W beat | AW → W（`WLAST=1`）→ B → WACK | `SW` |
| Single Read | AR | `ARLEN=0` | 1个R beat | AR → R（`RLAST=1`）→ RACK | `SR` |
| Burst Write | AW | `AWLEN=BURST_BEATS-1` | `BURST_BEATS`个W beat | AW → W×N（最后一拍`WLAST=1`）→ B → WACK | `BW` |
| Burst Read | AR | `ARLEN=BURST_BEATS-1` | `BURST_BEATS`个R beat | AR → R×N（最后一拍`RLAST=1`）→ RACK | `BR` |

四种事务共同使用：

- `AWSIZE/ARSIZE=3'b100`，每个数据拍为16字节（128 bit）；
- `AWBURST/ARBURST=INCR`；
- 数据地址按16字节对齐；
- 写数据的 `WSTRB` 全部有效；
- Burst地址随每个数据拍递增16字节。

`BURST_BEATS` 的合法范围为 `2～256`，默认值为 `4`。Module A通过APB寄存器 `BURST_CFG(0x020)` 配置，寄存器低8位保存AXI LEN，也就是 `BURST_BEATS-1`：

| BURST_BEATS | BURST_CFG[7:0] | AWLEN/ARLEN |
|---:|---:|---:|
| 2 | 1 | 1 |
| 4（默认） | 3 | 3 |
| 8 | 7 | 7 |
| 16 | 15 | 15 |
| 256 | 255 | 255 |

### 3.1 APB测试类型配置

Module A 的 `DATA_CFG[27:24]` 定义如下：

| TEST_TYPE | 产生的事务 |
|---:|---|
| 0 | 自动轮转SW、SR、BW、BR |
| 1 | 只产生Single Write |
| 2 | 只产生Single Read |
| 3 | 只产生Burst Write |
| 4 | 只产生Burst Read |

CLCI测试会通过APB分别写入 `1、2、3、4`，每个阶段只允许对应的事务类型出现；完成四个阶段后，再检查四类事务计数都大于0。

### 3.2 ACE读写属性

内部订单发生器使用以下ACE属性：

- Single Write在 `WriteUnique` 和 `WriteLineUnique` 之间轮转；
- Burst Write使用 `WriteUnique`；
- Single Read覆盖 `ReadShared`、`ReadUnique` 和 `ReadOnce`；
- Burst Read使用 `ReadOnce`；
- 主读完成后会产生同地址的 `ReadShared` 补读，用于覆盖 `IsShared` 响应。

### 3.3 一致性传输

除四种主事务外，测试还覆盖 Module B home node 发起的一致性流程：

| 流程 | 方向 | 作用 |
|---|---|---|
| AC | Module B → Module A | 发出snoop请求 |
| CR | Module A → Module B | 返回snoop响应 |
| CD | Module A → Module B | 命中脏数据时返回128-bit cache line |
| RACK | Module A → Module B | 确认读响应完成 |
| WACK | Module A → Module B | 确认写响应完成 |

AC测试覆盖以下snoop类型：

- ReadShared；
- MakeInvalid；
- CleanInvalid；
- ReadOnce。

读响应同时检查 `PassDirty` 和 `IsShared`。当CR响应指示需要返回脏数据时，Module A还必须通过CD通道完成数据回传。

### 3.4 协议计数判据

CLCI日志中的计数关系必须满足：

```text
W beat数量 = SW + BURST_BEATS × BW
R beat数量 = SR + BURST_BEATS × BR
```

典型输出如下：

```text
ACE transactions: Single Write=4 Single Read=6 Burst Write=3 Burst Read=3
```

测试不仅要求 `SW/SR/BW/BR` 均大于0，还会检查数据拍数、`WLAST/RLAST`、响应完成和链路排空状态。

## 4. 非 CLCI Direct VCS 测试

该测试将 Module A 和 Module B 直接连接，不经过 CLCI PHY，用于先确认 ACE 模块、APB 配置和数据检查逻辑正常。

### 4.1 运行单个数据模式

```bash
cd "${ACE_ROOT}"
bash sim/run_vcs.sh 0
```

将最后的 `0` 替换为 `1` 到 `5`，可以选择其他数据模式。

第二个参数用于设置Burst拍数，例如运行PRBS31和8拍Burst：

```bash
bash sim/run_vcs.sh 0 8
```

### 4.2 运行数据模式与Burst拍数矩阵

```bash
cd "${ACE_ROOT}"

BURST_LIST="2 4 8 16"
FAILED=""

for burst_beats in ${BURST_LIST}; do
    for mode in 0 1 2 3 4 5; do
        echo "===== Direct VCS DATA_MODE=${mode} BURST_BEATS=${burst_beats} ====="
        bash sim/run_vcs.sh "${mode}" "${burst_beats}" || \
            FAILED="${FAILED} mode${mode}/burst${burst_beats}"
    done
done

[ -z "${FAILED}" ] && echo "DIRECT MATRIX PASS" || echo "DIRECT MATRIX FAIL:${FAILED}"
```

该矩阵执行 `6种DATA_MODE × 4种Burst长度 = 24` 次仿真。AXI LEN最大值边界可以另外执行：

```bash
bash sim/run_vcs.sh 0 256
```

### 4.3 日志位置

```text
sim/compile.log
sim/run_mode0_burst2.log
sim/run_mode0_burst4.log
sim/run_mode0_burst8.log
sim/run_mode0_burst16.log
sim/run_mode1_burst2.log
...
sim/run_mode5_burst16.log
```

批量检查结果：

```bash
grep -H -E "TB_PASS|TB_FAIL|结果汇总" sim/run_mode*_burst*.log
```

每个模式应出现：

```text
TB_PASS: smoke (direct-connect, all-channel scope, ...)
```

## 5. CLCI 双 Die DV ROM 测试

该测试将 Module A 和 Module B 的 ACE 通道接入真实 CLCI 双 Die 仿真平台。

### 5.1 编译

进入 CLCI 仿真目录，并编译一次：

```bash
cd "${SIM_ROOT}"
make comp
```

编译成功时应看到：

```text
comp rc=0
```

### 5.2 运行单个数据模式

```bash
make sim NAME=dv_mode0_burst4 SIM_ARGS="+DATA_MODE=0 +BURST_BEATS=4"
```

### 5.3 运行数据模式与Burst拍数矩阵

```bash
cd "${SIM_ROOT}"

BURST_LIST="2 4 8 16"
FAILED=""

for burst_beats in ${BURST_LIST}; do
    for mode in 0 1 2 3 4 5; do
        echo "===== CLCI DV ROM DATA_MODE=${mode} BURST_BEATS=${burst_beats} ====="
        make sim \
            NAME="dv_mode${mode}_burst${burst_beats}" \
            SIM_ARGS="+DATA_MODE=${mode} +BURST_BEATS=${burst_beats}" || \
            FAILED="${FAILED} mode${mode}/burst${burst_beats}"
    done
done

[ -z "${FAILED}" ] && echo "CLCI DV MATRIX PASS" || echo "CLCI DV MATRIX FAIL:${FAILED}"
```

使用不同的 `NAME` 可以防止24次仿真互相覆盖日志。256拍边界测试命令为：

```bash
make sim \
    NAME=dv_mode0_burst256 \
    SIM_ARGS="+DATA_MODE=0 +BURST_BEATS=256"
```

### 5.4 日志位置

```text
run_dv_mode0_burst2/work/sim.log
run_dv_mode0_burst4/work/sim.log
run_dv_mode0_burst8/work/sim.log
run_dv_mode0_burst16/work/sim.log
...
run_dv_mode5_burst16/work/sim.log
```

批量检查结果：

```bash
grep -H -E \
    "ACE summary|ACE transactions|ACE coverage|TB_PASS|TB_FAIL|RESULT:" \
    run_dv_mode*_burst*/work/sim.log
```

## 6. 使用 RTL ROM 的 CLCI 双 Die 测试

编译完成后，运行 RTL ROM 的数据模式与Burst拍数矩阵：

```bash
cd "${SIM_ROOT}"

BURST_LIST="2 4 8 16"
FAILED=""

for burst_beats in ${BURST_LIST}; do
    for mode in 0 1 2 3 4 5; do
        echo "===== CLCI RTL ROM DATA_MODE=${mode} BURST_BEATS=${burst_beats} ====="
        make sim \
            ROM=rtl \
            NAME="rtl_mode${mode}_burst${burst_beats}" \
            SIM_ARGS="+DATA_MODE=${mode} +BURST_BEATS=${burst_beats}" || \
            FAILED="${FAILED} mode${mode}/burst${burst_beats}"
    done
done

[ -z "${FAILED}" ] && echo "CLCI RTL MATRIX PASS" || echo "CLCI RTL MATRIX FAIL:${FAILED}"
```

RTL ROM的256拍边界测试命令为：

```bash
make sim \
    ROM=rtl \
    NAME=rtl_mode0_burst256 \
    SIM_ARGS="+DATA_MODE=0 +BURST_BEATS=256"
```

日志位置：

```text
run_rtl_mode0_burst2/work/sim.log
run_rtl_mode0_burst4/work/sim.log
run_rtl_mode0_burst8/work/sim.log
run_rtl_mode0_burst16/work/sim.log
...
run_rtl_mode5_burst16/work/sim.log
```

批量检查结果：

```bash
grep -H -E \
    "ACE summary|ACE transactions|ACE coverage|TB_PASS|TB_FAIL|RESULT:" \
    run_rtl_mode*_burst*/work/sim.log
```

## 7. 波形测试

需要 FSDB 波形时，在对应的 CLCI 测试中增加 `WAVE=1`：

```bash
cd "${SIM_ROOT}"

make sim \
    NAME=dv_mode0_burst4_wave \
    WAVE=1 \
    SIM_ARGS="+DATA_MODE=0 +BURST_BEATS=4"
```

波形文件位于：

```text
run_dv_mode0_burst4_wave/work/debussy_*.fsdb
```

该功能需要服务器具备 Verdi/FSDB 环境。

## 8. 通过判据

Direct VCS 测试必须满足：

- 脚本退出码为 `0`；
- 日志包含 `TB_PASS`；
- 日志不包含 `TB_FAIL` 或未预期的 `Fatal`。

CLCI 测试必须同时满足：

- `make sim` 退出码为 `0`；
- 日志包含 `TB_PASS`；
- 日志包含 `RESULT: PASS`；
- `ACE transactions` 中 `SW`、`SR`、`BW`、`BR` 均大于 `0`；
- W/R数据拍总数符合所配置的 `BURST_BEATS`；
- Module A/Module B 错误状态均为 `0`；
- 仿真结束前所有在途事务已经排空；
- 日志不包含 `TB_FAIL`、未预期的 `Error:` 或 `Fatal:`。

典型的 CLCI 通过信息如下：

```text
ACE summary: mode=0 burst_beats=4 target=16 tx=16 wr=... rd=... snoop=... CD=...
ACE transactions: Single Write=... Single Read=... Burst Write=... Burst Read=...
TB_PASS: module A/B internal traffic through the two-die link, drained without errors
RESULT: PASS
```

## 9. 推荐回归顺序

1. 运行 Direct VCS 的六种数据模式与 `2/4/8/16` 拍Burst矩阵；
2. 执行一次 `make comp`；
3. 运行 CLCI DV ROM的六种数据模式与Burst矩阵；
4. 运行 CLCI RTL ROM的六种数据模式与Burst矩阵；
5. 分别运行DV ROM和RTL ROM的256拍边界测试；
6. 只在失败分析时打开 `WAVE=1`，避免回归产生大量波形文件。

如果 Direct VCS 失败，应先解决 ACE/APB 模块问题；如果 Direct VCS 通过而 CLCI 失败，应重点检查链路初始化、通道映射、VALID/READY 握手和链路侧日志。
