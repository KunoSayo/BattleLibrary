# Battle Library


## APIs



```mcfunction
# 初始化
function battle:init

# 以执行位置中心半径为x整数调用battleapi:circle_cb
function battle:circle{rad}
```

## Scoreboards
* timeToLive (dummy) 每个tick自动-1，当实体分数为0的时候自动kill
* consts (dummy) 数学常数
* bac (dummy) 内部计算用sb
* bas (dummy) 函数调用传递参数sb（Battle Api Settings）

* Health (health) 玩家的HP


## Tags
* battleLibTagKill 标记将要击杀的实体