fill -20 70 -20 20 74 20 barrier
fill -20 72 -20 20 72 20 air
bossbar add boss [{"text":""}]
bossbar set minecraft:boss name [{"text":"100% 巴尔巴莉希娅", "color":"red"}]
bossbar set minecraft:boss max 50529
bossbar set minecraft:boss value 50529
bossbar set minecraft:boss color red

bossbar set minecraft:boss visible true
bossbar set minecraft:boss players @a
scoreboard players set 50529 consts 50529
scoreboard players set bosshp bau 50529

kill @e[tag=boss]

summon minecraft:armor_stand 0 65 0 {ShowArms:1b, CustomName:'{"text":"0级 巴尔巴莉希娅", "color":"red"}', CustomNameVisible:1b, Invisible: 0b, NoBasePlate:1b, Invulnerable:1b, DisabledSlots:4144896, ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color: 65280}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color: 65280}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color: 65280}}},{id:"minecraft:leather_helmet",Count:1b, tag:{display:{color: 65280}}}], Tags:[boss, ffc, ffcboss], HandItems:[{id:"diamond_sword",Count:1}, {}]}

scoreboard players reset @a dmgstats
scoreboard players reset @a dps
scoreboard players reset @a dcstats
scoreboard players reset bosstime

scoreboard objectives modify dmgstats displayname "Total Damage"
scoreboard objectives modify dps displayname "DPS (*100)"

tag @a remove ffcbattle
tag @a[gamemode=adventure] add ffcbattle
scoreboard objectives setdisplay sidebar dps


tellraw @a {"text":"战斗开始！", "color":"gray"}
