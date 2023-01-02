execute if entity @s[tag=DONOTDROP] run title @s subtitle {"text":"不丢任意物品"}
execute if entity @s[tag=DONOTFALL] run title @s subtitle {"text":"不掉落3格及以上距离"}
execute if entity @s[tag=DONOTGODEEP] run title @s subtitle {"text":"不前往y20以下区域"}
execute if entity @s[tag=DONOTGONETHER] run title @s subtitle {"text":"不前往地狱"}
execute if entity @s[tag=DONOTJUMP] run title @s subtitle {"text":"不跳跃"}
execute if entity @s[tag=DONOTSHIFT] run title @s subtitle {"text":"不潜行"}
execute if entity @s[tag=DONOTRIDE] run title @s subtitle {"text":"不乘坐任何工具/动物"}
execute if entity @s[tag=DONOTGOHIGH] run title @s subtitle {"text":"不前往y128以上区域"}
execute if entity @s[tag=DONOTINTERACTFURNACE] run title @s subtitle {"text":"不使用熔炉"}
execute if entity @s[tag=DONOTINTERACTANVIL] run title @s subtitle {"text":"不使用铁砧"}
execute if entity @s[tag=DONOTINTERACTCAMPFIRE] run title @s subtitle {"text":"不使用篝火"}
execute if entity @s[tag=DONOTSWIM] run title @s subtitle {"text":"不游泳"}
execute if entity @s[tag=DONOTTHROWSNOWBALL] run title @s subtitle {"text":"不丢雪球"}
execute if entity @s[tag=DONOTTHROWEGG] run title @s subtitle {"text":"不丢鸡蛋"}
execute if entity @s[tag=DONOTWALKICE] run title @s subtitle {"text":"不踩冰"}

title @s title {"text":"\u00a74\u00a7kl\u00a7r\u00a74死\u00a7kj"}

execute if entity @s[tag=DONOTDROP] run tellraw @a [{"selector":"@s"}, {"text":"没有做到\u00a7l不丢任意物品"}]
execute if entity @s[tag=DONOTFALL] run tellraw @a [{"selector":"@s"}, {"text":"没有做到\u00a7l不掉落3格及以上距离"}]
execute if entity @s[tag=DONOTGODEEP] run tellraw @a [{"selector":"@s"}, {"text":"没有做到\u00a7l不前往y20以下区域"}]
execute if entity @s[tag=DONOTGONETHER] run tellraw @a [{"selector":"@s"}, {"text":"没有做到\u00a7l不前往地狱"}]
execute if entity @s[tag=DONOTJUMP] run tellraw @a [{"selector":"@s"}, {"text":"没有做到\u00a7l不跳跃"}]
execute if entity @s[tag=DONOTSHIFT] run tellraw @a [{"selector":"@s"}, {"text":"没有做到\u00a7l不潜行"}]
execute if entity @s[tag=DONOTRIDE] run tellraw @a [{"selector":"@s"}, {"text":"没有做到\u00a7l不乘坐任何工具/动物"}]
execute if entity @s[tag=DONOTGOHIGH] run tellraw @a [{"selector":"@s"}, {"text":"没有做到\u00a7l不前往y128以上区域"}]
execute if entity @s[tag=DONOTINTERACTFURNACE] run tellraw @a [{"selector":"@s"}, {"text":"没有做到\u00a7l不使用熔炉"}]
execute if entity @s[tag=DONOTINTERACTANVIL] run tellraw @a [{"selector":"@s"}, {"text":"没有做到\u00a7l不使用铁砧"}]
execute if entity @s[tag=DONOTINTERACTCAMPFIRE] run tellraw @a [{"selector":"@s"}, {"text":"没有做到\u00a7l不使用篝火"}]
execute if entity @s[tag=DONOTSWIM] run tellraw @a [{"selector":"@s"}, {"text":"没有做到\u00a7l不游泳"}]
execute if entity @s[tag=DONOTTHROWSNOWBALL] run tellraw @a [{"selector":"@s"}, {"text":"没有做到\u00a7l不丢雪球"}]
execute if entity @s[tag=DONOTTHROWEGG] run tellraw @a [{"selector":"@s"}, {"text":"没有做到\u00a7l不丢鸡蛋"}]
execute if entity @s[tag=DONOTWALKICE] run tellraw @a [{"selector":"@s"}, {"text":"没有做到\u00a7l不踩冰"}]

scoreboard players set @s Left -1

tag @s remove DONOTDROP
tag @s remove DONOTFALL
tag @s remove DONOTGODEEP
tag @s remove DONOTGONETHER
tag @s remove DONOTJUMP
tag @s remove DONOTSHIFT
tag @s remove DONOTRIDE
tag @s remove DONOTGOHIGH
tag @s remove DONOTINTERACTFURNACE
tag @s remove DONOTINTERACTANVIL
tag @s remove DONOTINTERACTCAMPFIRE
tag @s remove DONOTSWIM
tag @s remove DONOTTHROWSNOWBALL
tag @s remove DONOTTHROWEGG
tag @s remove DONOTWALKICE
