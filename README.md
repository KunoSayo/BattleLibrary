# Battle Library

战斗地图用基础（前置？）库，提供了一些基础的scoreboard和回调，具体参考之后介绍。
数据包默认初始化函数包含一下规则：
```
gamerule maxCommandChainLength 400000
gamerule keepInventory true
gamerule doEntityDrops false
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule mobGriefing false
```
  
Example:  
```
# 初始化（会预先调用一次卸载）
# 会强制加载区块0 0 
function battle:init

# 卸载
function battle:uninstall
```
  

## APIs

```mcfunction
# 初始化
# 会强制加载区块0 0 
function battle:init

# 以执行位置击退玩家[tag=driveoff] bas::driveoff * 0.25格的距离（至多歪40格）
# 
function battle:driveoff

# 以执行位置中心半径为rad，调用battleapi:circle_cb
function battle:circle/{rad}

# 以执行位置前面宽度半径为width长度为len的直线，调用battleapi:line_cb
function battle:line/width/len

# 以执行位置中心画斜向箭头指向玩家，调用battleapi:x2self_cb
function battle:x2self

# 以执行位置面向往前，以scoreboard中bas的forward参数值的0.25倍的格为距离
# 如果一格范围内有block标签的实体则会停止
# 路径回调battleapi:forward_cb
# 如果bas的fr为1，最终结束的位置会产生一个包含标签forward_result的armor_stand
function battle:forward

# 在执行位置生成盔甲架显示数字
# 使用0 8 0和0 9 0位置方块
# 使用bas的n的分数作为数字
function battle:displayn
```

## api callback
```mcfunction
chant_cb: 咏唱技能时每个tick回调
circle_cb: 圆圈上采样点的回调
forward_cb: forward函数路径回调
gcd_cb: 公共冷却时回调
line_cb: 直线打表回调
on_death: 玩家死亡回调
on_move: 玩家走路/跑步回调
on_sneak: 玩家潜行回调
posttick: battlelib跑完自身tick回调
pre: battlelib进行tick之前的回调
x2out_cb: 玩家往外的箭头图案回调
x2self_cb: 箭头指向玩家的回调
```

## Scoreboards

* timeToLive (dummy) 每个tick自动-1，当实体分数为0的时候自动kill
* liveticks (dummy) 每个非玩家实体 tick自动+1
* 
* consts (dummy) 数学常数，包含值具体参考initconst.mcfunction
* bac (dummy) 内部计算用sb
* bas (dummy) 函数调用传递参数sb（Battle Api Settings）
* bau (dummy) 用户计分板，欢迎使用
* time (dummy) 计时
* dmg (dummy) 以瞬间伤害0为基准的次数【会根据层数自动加瞬间伤害等级至1/2】（玩家only）
* dmgcache (dummy) 在计算伤害之前会将这个值加到dmg中并重置
* dmgcd (dummy) 造成伤害之后的cd
* heal(dummy) 以瞬间治疗0为基准的次数【会根据层数自动加瞬间伤害等级至1/2】（玩家only）
* healcd (dummy) 造成伤害之后的cd
* gcd (dummy) global cool down
* chant (dummy) 玩家吟唱剩余tick
* maxchant (dummy) 玩家吟唱对应技能所需tick

* Health (health) 玩家的HP
* Death (deathCount) 死亡
* walk 行走记录
* run 跑记录
* crouch 蹲着走记录
* sneak 蹲着记录
* X/Y/Z 玩家x/y/z坐标*10000后的数值

## Tags

* showDmgAs 显示伤害的实体（会自动上升）

## Predicates
r1d{n}: 表示1/n的概率通过


## Notes

瞬间伤害0=3♥ 2.5♥(抗性提升0)  1.5♥(1)  
瞬间伤害1=6♥ 4.5♥(抗性提升0)  3.5♥(1)  
瞬间伤害2=12♥ 9.5♥(抗性提升0) 7♥(1)  
瞬间伤害3=24♥ 19♥（抗性提升0） 14♥(1)

瞬间治疗0=2♥  
瞬间治疗1=4♥
瞬间治疗2=8♥

伤害吸收1级=2♥

3s生命恢复0=0.5♥
2s生命恢复1=0.5♥
1s生命恢复2=0.5♥
1s生命恢复3=1.5♥

2凋零0=0.5♥
1凋零1=0.5♥
1凋零2=1♥

1.5中毒0=0.5♥

1中毒max=1♥