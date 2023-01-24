tellraw @a {"text":"\u00a7e巴尔巴莉希娅发动了“残暴冲锋”。"}

tag @s add block
effect give @s minecraft:wither 1 6
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

execute as @e[tag=boss] at @s run summon minecraft:armor_stand ~ 65 ~ {NoGravity:1b, Marker:1b, Tags:[bossas, ffcas, aoeas, line_1_30, nratk], Invisible:1b}

data modify entity @e[tag=nratk,limit=1] Rotation set from entity @e[tag=boss,limit=1] Rotation

scoreboard players set @e[tag=nratk] timeToLive 21

tag @e[tag=nratk] remove nratk

playsound minecraft:entity.player.attack.weak hostile @a ~ ~ ~ 1000 1