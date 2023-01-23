function battle:init

kill @e[type=armor_stand]

execute as @a store result score @s Health run data get entity @s Health

fill -20 70 -20 20 74 20 barrier
fill -20 72 -20 20 72 20 air
bossbar add boss [{"text":""}]
bossbar add bosschant [{"text":""}]
bossbar set minecraft:boss name [{"text":"100% 巴尔巴莉希娅", "color":"red"}]
bossbar set minecraft:boss max 50529
bossbar set minecraft:boss value 50529
bossbar set minecraft:boss color red

bossbar set minecraft:boss visible true
bossbar set minecraft:boss players @a

bossbar set minecraft:bosschant visible false
bossbar set minecraft:bosschant color yellow

scoreboard players set 50529 consts 50529
scoreboard players set bosshp bau 50529

scoreboard players set bosschantmax bau 100

kill @e[tag=boss]

summon minecraft:armor_stand 0 65 0 {ShowArms:1b, CustomName:'{"text":"0级 巴尔巴莉希娅", "color":"red"}', CustomNameVisible:1b, Invisible: 0b, NoBasePlate:1b, Invulnerable:1b, DisabledSlots:4144896, ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color: 65280}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color: 65280}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color: 65280}}},{id:"minecraft:leather_helmet",Count:1b, tag:{display:{color: 65280}}}], Tags:[boss, ffc, ffcboss], HandItems:[{id:"diamond_sword",Count:1}, {}], NoGravity:1b}

scoreboard players reset @a dmgstats
scoreboard players reset @a dps
scoreboard players reset @a dcstats
scoreboard players reset @a ffccd
scoreboard players reset bosstime

scoreboard objectives modify dmgstats displayname "Total Damage"
scoreboard objectives modify dps displayname "DPS (*100)"

tag @a remove ffcbattle
tag @a[gamemode=adventure] add ffcbattle
tag @a[gamemode=creative] add ffcbattle
scoreboard objectives setdisplay sidebar dps


tellraw @a {"text":"战斗开始！", "color":"gray"}
clear @a[gamemode=adventure]
item replace entity @a[gamemode=adventure] hotbar.5 with minecraft:golden_apple
tp @a[gamemode=adventure] 0 65 12 facing 0 65 0

team modify H collisionRule never
team join H @a
tag @a[tag=ffcbattle] add gaming

# Randoms
scoreboard players set bsisLine bau 0
scoreboard players set bsisX bau 0
scoreboard players set bsisR bau 0

execute if predicate battle:r1d2 run scoreboard players set bsisLine bau 1
execute if predicate battle:r1d2 run scoreboard players set bsisX bau 1
execute if predicate battle:r1d2 run scoreboard players set bsisR bau 1

title @a subtitle ""
title @a title {"text":"开始！", "color":"gold"}

fill -20 65 -20 20 65 20 air replace minecraft:structure_void