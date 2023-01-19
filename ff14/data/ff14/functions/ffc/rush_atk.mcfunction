tag @s add block
scoreboard players set forward bas 120
scoreboard players set fr bas 1
tag @s add rush_atk_target
execute as @e[tag=boss] at @s run tp @s ~ ~ ~ facing entity @a[limit=1,tag=rush_atk_target]
execute as @e[tag=boss] at @s run function battle:forward
execute as @e[tag=boss] at @e[tag=forward_result, limit=1] run tp @s ~ ~ ~
execute as @e[tag=boss] at @s run tp @s ~ 65 ~ ~ 0
kill @e[tag=forward_result]

tag @s remove rush_atk_target
tag @s remove block
