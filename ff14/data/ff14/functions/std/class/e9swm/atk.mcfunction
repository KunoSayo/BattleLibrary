scoreboard players reset @a dmgcache
scoreboard players set aoedmg bau 1

execute positioned ~ 60 ~ rotated ~ 0 run function battle:line/0.5/30
scoreboard players reset @s dmgcache
tag @s add _atk_owner

item replace entity @s inventory.16 from entity @s weapon.mainhand
item replace entity @s weapon.mainhand with nether_star{display:{Lore:['"魔法 \\u00a77咏唱时间5.0s 复唱时间2.5s"', '""', '"\\u00a76波动诅咒 \\u00a7a威力：\\u00a7f10"', '"\\u00a79对前方30米直线发动\\u00a75无属性\\u00a79魔法攻击"'],"Name":"{\"text\":\"波动炮\"}}"}} 1

execute as @a[scores={dmgcache=1}] run damage @s 10 arrow by @a[tag=_atk_owner,limit=1]

item replace entity @s weapon.mainhand from entity @s inventory.16
item replace entity @s inventory.16 with air

tag @s remove _atk_owner


scoreboard players reset @a dmgcache
