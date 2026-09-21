# ACE-Full UCIe链路延迟与超时验证方案

## 1. 验证目标

在Module A与Module B之间加入UCIe链路延迟模型，验证ACE-Full事务在链路延迟下是否保持协议、数据及顺序正确，并验证事务长期无进展时的超时报错功能。

验证内容：

- 全部ACE通道支持可配置延迟；
- 延迟期间VALID及payload保持符合ACE协议；
- 延迟结束后事务正常完成；
- 同通道及同ID事务顺序正确；
- PRBS生成器与检查器不发生错拍；
- 事务超过超时阈值后统一报错；
- 超时后当前测试判定失败并结束。

各种链路原因导致的超时统一映射为ACE timeout错误。

## 2. 系统结构

```text
Module A（ACE-Full Master + cache）
                 ⇅
       ace_ucie_link_model
                 ⇅
Module B（ACE-Full Slave + home/directory）
```

全部ACE通道经过`ace_ucie_link_model`：

```text
A → B：AW、W、AR、CR、CD、RACK、WACK
B → A：B、R、AC
```

## 3. 职责划分

### 3.1 UCIe侧职责

以下功能属于UCIe控制器、协议层或适配层：

- CRC校验；
- Retry/Replay控制；
- Replay Buffer/FIFO；
- Retrain过程；
- Retrain后的链路事务重发。

### 3.2 ACE侧职责

Module A和Module B负责：

- 发送或接收ACE事务；
- 等待对应请求、数据或响应；
- 检查数据、属性和事务顺序；
- 统计事务无进展周期；
- 超过阈值后设置错误状态；
- 将超时交给UVM判定当前测试失败。

### 3.3 验证环境职责

UVM负责：

- 配置目标通道和延迟周期；
- 检查延迟范围及事务完成结果；
- 收集超时、顺序、数据和协议错误；
- 在发生超时后结束当前测试并报告失败；
- 重新运行测试时重新初始化完整仿真环境。

## 4. `ace_ucie_link_model`

### 4.1 功能

`ace_ucie_link_model`根据测试配置控制ACE通道的等待时间。

该模块负责：

- 选择目标ACE通道；
- 对目标通道施加指定周期的等待；
- 输出延迟活动状态；
- 保持延迟期间的payload；
- 延迟在超时阈值前结束时，确保一次输入只产生一次输出；
- 延迟达到超时阈值时，由ACE侧超时监测发现。

### 4.2 配置接口

```systemverilog
logic        replay_delay_active;
logic        retrain_link_active;
logic [15:0] delay_cycles;
logic [9:0]  delay_channel_mask;
```

控制关系：

```text
replay_delay_active=0，retrain_link_active=0：正常传输
replay_delay_active=1，retrain_link_active=0：Replay延迟
replay_delay_active=0，retrain_link_active=1：Retrain/Link Error/Link Reset延迟
```

两个延迟控制信号保持互斥。

`delay_channel_mask`依次对应：

```text
AW、W、B、AR、R、AC、CR、CD、RACK、WACK
```

### 4.3 状态输出

```systemverilog
logic [9:0] channel_delay_active;
```

`replay_delay_active || retrain_link_active`表示链路正在产生延迟。UVM根据`delay_cycles`与ACE超时阈值的关系检查完成或超时结果。

### 4.4 延迟行为

```text
检测到目标通道传输
→ 锁存通道payload
→ 等待delay_cycles
→ 延迟结束
→ 向接收端交付一次
```

延迟期间：

- payload保持不变；
- 尚未交付的事务持续保存在通道缓冲区；
- 每个事务交付一次；
- 同通道顺序保持不变。

## 5. Module A超时监测

### 5.1 主事务计数器

增加：

```systemverilog
logic [15:0] a_main_wait_cnt;
logic        err_a_main_timeout;
```

监测状态：

```text
M_W_AW、M_W_W、M_W_B、M_R_AR、M_R_R
```

计数规则：

```text
等待且无握手 → a_main_wait_cnt递增
发生有效握手 → a_main_wait_cnt清零
返回M_IDLE   → a_main_wait_cnt清零
达到阈值     → err_a_main_timeout置位
```

### 5.2 Snoop计数器

增加：

```systemverilog
logic [15:0] a_snoop_wait_cnt;
logic        err_a_snoop_timeout;
```

监测状态：

```text
S_CR、S_CD
```

CR或CD完成握手后计数器清零；达到阈值后`err_a_snoop_timeout`置位。

### 5.3 超时行为

Module A超时标志使用sticky方式保持到系统复位或错误清除：

```systemverilog
if (!areset_n)
  err_a_main_timeout <= 1'b0;
else if (a_main_wait_cnt == A_TIMEOUT-1)
  err_a_main_timeout <= 1'b1;
```

超时后保持cache和当前ACE状态，通过sticky错误通知UVM结束测试。

## 6. Module B超时监测

### 6.1 Slave计数器

增加：

```systemverilog
logic [15:0] b_slave_wait_cnt;
logic        err_b_slave_timeout;
```

监测状态：

```text
B_W、B_B、B_R
```

相关握手发生后计数器清零；达到阈值后`err_b_slave_timeout`置位。

### 6.2 Home计数器

使用或扩展现有snoop timeout逻辑：

```systemverilog
logic [15:0] b_home_wait_cnt;
logic        err_b_home_timeout;
```

监测状态：

```text
H_SEND_AC、H_WAIT_CR、H_WAIT_CD
```

AC、CR或CD完成对应握手后计数器清零；达到阈值后`err_b_home_timeout`置位。

### 6.3 超时行为

Module B超时标志保持到系统复位或错误清除。超时后保持memory、directory、已完成写入和当前ACE状态，通过sticky错误通知UVM结束测试。

## 7. 顺序与关联检查

验证环境检查以下顺序约束：

- 同一ACE通道内的beat顺序不变；
- 同一ID的响应按照请求顺序返回；
- B响应只能出现在该事务全部W拍完成之后；
- R响应只能出现在对应AR之后；
- CR/CD必须对应已经接收的AC；
- RACK/WACK必须对应已经完成的读写响应；
- snoop通道独立于读写事务通道推进，不能被R/B永久阻塞。

任一顺序或关联错误均设置错误并使测试失败。

## 8. PRBS与数据检查

Module A和Module B继续使用现有地址相关数据模式及PRBS检查。

数据检查覆盖：

- beat丢失；
- beat重复；
- beat顺序变化；
- PRBS生成器和检查器错拍；
- CD数据与cache快照不一致；
- memory、cache或directory结果错误。

## 9. 链路延迟测试

配置：

```systemverilog
replay_delay_active = 1'b1;
retrain_link_active = 1'b0;
delay_cycles < TIMEOUT_THRESHOLD;
```

检查内容：

- `replay_delay_active`有效；
- 目标通道按配置延迟；
- payload保持正确；
- 延迟结束后事务只完成一次；
- Module A/B没有产生timeout；
- 顺序、PRBS和协议检查通过。

## 10. 统一超时测试

配置`retrain_link_active=1`且`delay_cycles`达到或超过ACE超时阈值，验证统一超时报错：

```text
事务长期无进展
→ 对应Module A/B计数器达到阈值
→ 对应sticky timeout错误置位
→ UVM报告错误
→ 当前测试失败并结束
```

各种链路原因导致的超时均使用同一判定流程：

```text
retrain_link_active有效
→ 目标通道停止推进
→ Module A/B等待计数达到阈值
→ 统一timeout错误
→ 当前测试失败
```

边界值：

```text
delay_cycles = TIMEOUT_THRESHOLD - 1：事务完成，不报timeout
delay_cycles = TIMEOUT_THRESHOLD    ：报timeout
delay_cycles = TIMEOUT_THRESHOLD + 1：报timeout
```

## 11. UVM用例

现有README中的三个ACE功能测试继续作为链路验证的基础回归：

| 测试 | 内容总结 |
|---|---|
| `ace_smoke_test` | 每个目标行依次执行WriteUnique、ReadShared和ReadUnique，4行共12笔订单；检查基础读写、数据回读、UD状态建立及CD脏数据回流。 |
| `ace_snoop_test` | 执行ReadShared铺行、ReadShared重读和ReadUnique重读；检查IsShared共享闭环、AC/CR响应、UD脏行及CD回写闭环。 |
| `ace_random_test` | 生成50笔随机合法订单，随机选择读写方向、地址和ACE属性；用于随机交错压力、状态组合及功能覆盖率收敛。 |

三个测试都会伴随Module B home自动产生snoop，并预留收尾周期完成最后的CR/CD事务。接入延迟模块后，三个测试分别在无延迟和链路延迟配置下回归。

链路专项测试：

```text
ace_link_delay_test
ace_link_timeout_test
ace_link_order_test
```

- `ace_smoke_test`、`ace_snoop_test`、`ace_random_test`：无延迟基础回归；
- `ace_link_delay_test`：由mask逐个选择目标通道，延迟周期小于超时阈值；
- `ace_link_timeout_test`：延迟达到阈值，预期统一超时报错；
- `ace_link_order_test`：检查同通道、同ID和请求响应顺序。

全部可用UVM测试：

```bash
bash uvm/sim/run_uvm_vcs.sh ace_smoke_test
bash uvm/sim/run_uvm_vcs.sh ace_snoop_test
bash uvm/sim/run_uvm_vcs.sh ace_random_test
bash uvm/sim/run_uvm_vcs.sh ace_link_delay_test
bash uvm/sim/run_uvm_vcs.sh ace_link_timeout_test
bash uvm/sim/run_uvm_vcs.sh ace_link_order_test
```

链路逐通道回归：

```bash
bash uvm/sim/run_link_delay_matrix.sh
bash uvm/sim/run_link_timeout_matrix.sh
```

mask `001/002/004/008/010/020/040/080/100/200`依次对应
`AW/W/B/AR/R/AC/CR/CD/RACK/WACK`。timeout矩阵覆盖建立状态机等待的
`AW/W/B/AR/R/AC/CR/CD`；RACK/WACK作为单拍完成通知验证延迟和完整传输。

通过标准：正常测试要求`UVM_ERROR : 0`、`UVM_FATAL : 0`和`TEST_PASS`；
timeout负向测试要求观察到预期timeout且没有伴随非预期功能错误。

`ace_link_delay_test`统一配置：

```text
replay_delay_active = 1
→ 对Replay通道施加延迟
或
retrain_link_active = 1
→ 对目标ACE通道施加延迟
→ 监测Module A/B等待计数器
→ 阈值前结束时检查事务正常完成
```

## 12. Scoreboard

记录内容：

```text
目标通道、延迟周期、输入/输出时间、
ID、地址、属性、数据、响应、等待计数器和timeout标志
```

检查内容：

- 输出payload与输入payload一致；
- 延迟在阈值前结束时输入和输出事务数量一致；
- 延迟达到阈值后产生预期timeout；
- 同通道beat顺序正确；
- 同ID响应顺序正确；
- B与W、R与AR、CR/CD与AC关联正确；
- 阈值前的延迟结束后事务完成；
- 超时场景产生对应timeout错误；
- cache、directory、memory和snoop结果正确。

## 13. SVA

增加以下断言：

- `replay_delay_active`与`retrain_link_active`保持互斥；
- `VALID=1 && READY=0`时VALID和payload稳定；
- 延迟计数期间保存payload稳定；
- 一个输入事务最多产生一次输出；
- 同通道beat顺序保持；
- B在全部W拍之后出现；
- R在对应AR之后出现；
- CR/CD在对应AC之后出现；
- 无进展计数器只在对应等待状态递增；
- 有效握手后对应计数器清零；
- 达到阈值后timeout错误置位；
- timeout不会清除cache、directory或memory。

## 14. Functional Coverage

```text
cg_delay_control：正常、Replay、Retrain/Link事件
cg_channel：AW、W、B、AR、R、AC、CR、CD、RACK、WACK
cg_delay_range：短延迟、阈值前、达到阈值、超过阈值
cg_timeout_owner：A-main、A-snoop、B-slave、B-home
cg_order_result：正常、通道乱序、同ID乱序、关联错误
cg_completion：正常完成、延迟后完成、timeout失败
```

交叉覆盖：

```text
延迟控制 × ACE通道
ACE通道 × 延迟范围
ACE通道 × timeout owner
延迟范围 × 完成结果
```

原有订单、snoop、cache状态和RRESP覆盖继续采集。

## 15. 实施顺序

1. 增加`ace_ucie_link_model.sv`；
2. 接入全部ACE通道；
3. 运行无延迟回归；
4. 增加Module A main和snoop无进展计数器；
5. 增加Module B slave计数器并扩展home timeout；
6. 增加统一sticky timeout错误输出；
7. 增加链路延迟测试；
8. 增加超时边界和顺序检查测试；
9. 增加scoreboard、SVA和coverage；
10. 运行全部通道组合回归。

## 16. 验收标准

1. 两个延迟控制信号关闭时现有回归全部通过；
2. 全部ACE通道支持可配置延迟；
3. 延迟在阈值前结束时，事务内容、数量及顺序一致；
4. 阈值前的延迟结束后事务能够完成；
5. 同通道、同ID及请求响应顺序检查通过；
6. 延迟达到超时阈值后产生对应Module A/B timeout；
7. 各种链路原因造成的超时均产生统一timeout错误；
8. timeout置位后由UVM结束当前测试；
9. UVM scoreboard、SVA和Passive ACE VIP无非预期错误；
10. 延迟控制、通道、延迟范围、顺序和timeout覆盖项被采集。
