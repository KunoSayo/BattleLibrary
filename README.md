# Battle Library

## APIs

```mcfunction
# 初始化
# 会强制加载区块0 0 
function battle:init

# 以执行位置击退玩家bas::driveoff * 0.25格的距离（至多歪40格）
function battle:driveoff

# 以执行位置中心半径为rad，调用battleapi:circle_cb
function battle:circle{rad}

# 以执行位置中心画斜向箭头指向玩家，调用battleapi:x2self_cb
function battle:x2self

# 以执行位置面向往前，以scoreboard中bas的forward参数值的0.25倍的格为距离
# 回调battleapi:forward_cb
function battle:forward

# 在执行位置生成盔甲架显示数字
# 使用0 8 0和0 9 0位置方块
# 使用bas的n的分数作为数字
function battle:displayn
```

## Scoreboards

* timeToLive (dummy) 每个tick自动-1，当实体分数为0的时候自动kill
* consts (dummy) 数学常数
* bac (dummy) 内部计算用sb
* bas (dummy) 函数调用传递参数sb（Battle Api Settings）
* bau (dummy) 用户计分板，欢迎使用
* time (dummy) 计时
* dmg (dummy) 以瞬间伤害0为基准的次数【会根据层数自动加瞬间伤害等级至1/2】（玩家only）
* dmgcd (dummy) 造成伤害之后的cd
* gcd (dummy) global cool down
* chant (dummy) 吟唱剩余tick

* Health (health) 玩家的HP
* Death (deathCount) 死亡
* walk 行走记录
* crouch 蹲着走记录
* sneak 蹲着记录

## Tags

* battleLibTagKill 标记将要击杀的实体
* showDmgAs 显示伤害的盔甲架（会自动上升）
* self 部分函数体标记执行者自身

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
