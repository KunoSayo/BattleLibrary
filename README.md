# Battle Library

## APIs

```mcfunction
# 初始化
function battle:init

# 以执行位置中心半径为x整数调用battleapi:circle_cb
function battle:circle{rad}

# 以执行位置面向往前，以scoreboard中bas的forward参数值的0.25倍的格为距离
# 回调battleapi:forward_cb
function battle:forward
```

## Scoreboards

* timeToLive (dummy) 每个tick自动-1，当实体分数为0的时候自动kill
* consts (dummy) 数学常数
* bac (dummy) 内部计算用sb
* bas (dummy) 函数调用传递参数sb（Battle Api Settings）

* Health (health) 玩家的HP

## Tags

* battleLibTagKill 标记将要击杀的实体

## Notes

瞬间伤害0=3♥ 2.5♥(抗性提升)
瞬间伤害1=6♥ 4.5♥(抗性提升)
瞬间伤害2=12♥ 9.5♥(抗性提升)

瞬间治疗0=2♥  
瞬间治疗1=4♥

伤害吸收1级=2♥

3s生命恢复=0.5♥

