execute if score m20 time matches 10 positioned 0 65 0 run function ff14:ffc/border
execute positioned 0 65 0 run effect give @a[tag=ffcbattle,distance=10..] minecraft:wither 15 66
execute positioned 0 65 0 run effect give @a[tag=ffcbattle,distance=10..] minecraft:poison 15 66
execute positioned 0 65 0 run effect give @a[tag=ffcbattle,distance=10..] minecraft:hunger 14 255

# 9161 start
# 8:40 rush => 9360
execute if score bosstime time matches 9299 run tellraw @a {"text":"\u00a7a巴尔巴莉希娅：暴风无法逃离！"}
execute if score bosstime time matches 9300 run function ff14:ffc/cruel_charge/start

# 8:46
execute if score bosstime time matches 9419 run tellraw @a {"text":"\u00a7a巴尔巴莉希娅：你会被撕成碎片！"}

execute if score bosstime time matches 9500 run tp @s 0 65 0
# 8:51 开砸
execute if score bosstime time matches 9520 run effect give @a[tag=ffcbattle] minecraft:poison 8 1
execute if score bosstime time matches 9539 run tellraw @a {"text":"\u00a7e巴尔巴莉希娅发动了“怒拳连震”。"}
execute if score bosstime time matches 9540 run scoreboard players add @a[tag=ffcbattle] dmg 1
execute if score bosstime time matches 9540 run particle minecraft:block grass 0 66 0 7 0.25 7 1 10000 force

execute if score bosstime time matches 9580 run scoreboard players add @a[tag=ffcbattle] dmg 1
execute if score bosstime time matches 9580 run particle minecraft:block grass 0 66 0 7 0.25 7 1 10000 force

execute if score bosstime time matches 9620 run scoreboard players add @a[tag=ffcbattle] dmg 1
execute if score bosstime time matches 9620 run particle minecraft:block grass 0 66 0 7 0.25 7 1 10000 force
execute if score bosstime time matches 9660 run scoreboard players add @a[tag=ffcbattle] dmg 1
execute if score bosstime time matches 9660 run particle minecraft:block grass 0 66 0 7 0.25 7 1 10000 force
execute if score bosstime time matches 9680 run scoreboard players add @a[tag=ffcbattle] dmg 1
execute if score bosstime time matches 9680 run particle minecraft:block grass 0 66 0 7 0.25 7 1 10000 force
execute if score bosstime time matches 9700 run scoreboard players add @a[tag=ffcbattle] dmg 2
execute if score bosstime time matches 9700 run particle minecraft:block grass 0 66 0 7 0.25 7 1 10000 force

execute if score bosstime time matches 9779 run tellraw @a {"text":"\u00a7e巴尔巴莉希娅发动了“重拳激震”。"}
execute if score bosstime time matches 9780 run scoreboard players add @a[tag=ffcbattle] dmg 2
execute if score bosstime time matches 9780 run particle minecraft:block grass 0 66 0 7 0.25 7 1 5000 force
execute if score bosstime time matches 9780 run particle minecraft:block grass_block 0 66 0 7 0.25 7 1 5000 force

execute if score bosstime time matches 9780 as @a[tag=ffcbattle] at @s run summon minecraft:armor_stand ~ 65 ~ {NoGravity:1b, Marker:1b, Tags:[bossas, ffcas, aoeas, aoe3.5, ypui0], Invisible:1b}
execute if score bosstime time matches 9780 run scoreboard players set @e[tag=ypui0] timeToLive 60

execute if score bosstime time matches 9820 as @a[tag=ffcbattle] at @s run summon minecraft:armor_stand ~ 65 ~ {NoGravity:1b, Marker:1b, Tags:[bossas, ffcas, aoeas, aoe3.5, ypui1], Invisible:1b}
execute if score bosstime time matches 9820 run scoreboard players set @e[tag=ypui1] timeToLive 60

execute if score bosstime time matches 9860 as @a[tag=ffcbattle] at @s run summon minecraft:armor_stand ~ 65 ~ {NoGravity:1b, Marker:1b, Tags:[bossas, ffcas, aoeas, aoe3.5, ypui2], Invisible:1b}
execute if score bosstime time matches 9860 run scoreboard players set @e[tag=ypui2] timeToLive 60

execute if score bosstime time matches 9861 as @a[tag=ffcbattle] at @s run particle minecraft:dust_color_transition 0.375 0.25 0 1 1 0 0 ~ 67 ~ 0.125 0.5 0.125 1000 100
execute if score bosstime time matches 9861 run tag @a[tag=ffcbattle] add ffxing
execute if score bosstime time matches 9861 run tag @a add ndx
execute if score bosstime time matches 9861 run function ff14:cachex
execute if score bosstime time matches 9880 as @a[tag=ffcbattle] at @s run particle minecraft:dust_color_transition 0.375 0.25 0 1 1 0 0 ~ 67 ~ 0.125 0.5 0.125 1000 100
execute if score bosstime time matches 9900 as @a[tag=ffcbattle] at @s run particle minecraft:dust_color_transition 0.375 0.25 0 1 1 0 0 ~ 67 ~ 0.125 0.5 0.125 1000 100

execute if score bosstime time matches 9900 as @a[tag=ffcbattle] at @s run summon minecraft:armor_stand ~ 65 ~ {NoGravity:1b, Marker:1b, Tags:[bossas, ffcas, aoeas, aoe3.5, ypui3], Invisible:1b}
execute if score bosstime time matches 9900 run scoreboard players set @e[tag=ypui3] timeToLive 60

execute if score bosstime time matches 9920 as @a[tag=ffcbattle] at @s run particle minecraft:dust_color_transition 0.375 0.25 0 1 1 0 0 ~ 67 ~ 0.125 0.5 0.125 1000 100
execute if score bosstime time matches 9940 as @a[tag=ffcbattle] at @s run particle minecraft:dust_color_transition 0.375 0.25 0 1 1 0 0 ~ 67 ~ 0.125 0.5 0.125 1000 100
execute if score bosstime time matches 9959 run tag @a remove ndx
execute if score bosstime time matches 9960 as @a[tag=ffcbattle] at @s run summon minecraft:armor_stand ~ 65 ~ {NoGravity:1b, Marker:1b, Tags:[bossas, ffcas, aoeas, aoe7.5], Invisible:1b}
execute if score bosstime time matches 9960 run scoreboard players set @e[tag=aoe7.5] timeToLive 60
execute if score bosstime time matches 9960 run function ff14:ffc/cruel_charge/start

# 10000: delta= 2s
# +7s
# 10140
execute if score bosstime time matches 10130 run tp @s 0 65 0
execute if score bosstime time matches 10140 run function ff14:ffc/tornado/start
execute if score bosstime time matches 10220 run tag @a[tag=ffcbattle] add ffxing
execute if score bosstime time matches 10220 run function ff14:cachex
execute if score bosstime time matches 10220 run function ff14:ffc/impact/start

# 9:35 => 10460
execute if score bosstime time matches 10400 run tellraw @a {"text":"\u00a7a巴尔巴莉希娅：真是碍眼！"}
execute if score bosstime time matches 10420 run function ff14:ffc/cruel_charge/start
execute if score bosstime time matches 10590 run tp @s 0 65 0
execute if score bosstime time matches 10600 run function ff14:ffc/wave/start
execute if score bosstime time matches 10700 run tellraw @a {"text":"\u00a7e巴尔巴莉希娅发动了“震拳”。"}
execute if score bosstime time matches 10700 run scoreboard players add @a[tag=ffcbattle] dmg 1
execute if score bosstime time matches 10780 run function ff14:ffc/tornado/start

execute if score bosstime time matches 10960 run function ff14:ffc/warn_wind/cast

execute if score bosstime time matches 11140 run function ff14:ffc/tornado/start

execute if score bosstime time matches 11260 run tag @r[tag=ffcbattle] add ffhing
execute if score bosstime time matches 11260 run function ff14:cacheh

execute if score bosstime time matches 11280 run tag @r[tag=ffcbattle,tag=!ffhing] add ffting
execute if score bosstime time matches 11280 run function ff14:cachet

execute if score bosstime time matches 11439 run tp @s @a[tag=ffting,limit=1]
execute if score bosstime time matches 11440 run tp @s ~ ~ ~ ~ 0
execute if score bosstime time matches 11460 run tp @s 0 65 0 ~ 0
# 10:29 => 11540
execute if score bosstime time matches 11500 run tellraw @a {"text":"\u00a7a巴尔巴莉希娅：去死吧！"}

execute if score bosstime time matches 11540 run effect give @a[tag=ffcbattle] minecraft:poison 8 1
execute if score bosstime time matches 11559 run tellraw @a {"text":"\u00a7e巴尔巴莉希娅发动了“怒拳连震”。"}
execute if score bosstime time matches 11560 run scoreboard players add @a[tag=ffcbattle] dmg 1
execute if score bosstime time matches 11560 run particle minecraft:block grass 0 66 0 7 0.25 7 1 10000 force

execute if score bosstime time matches 11600 run scoreboard players add @a[tag=ffcbattle] dmg 1
execute if score bosstime time matches 11600 run particle minecraft:block grass 0 66 0 7 0.25 7 1 10000 force

execute if score bosstime time matches 11640 run scoreboard players add @a[tag=ffcbattle] dmg 1
execute if score bosstime time matches 11640 run particle minecraft:block grass 0 66 0 7 0.25 7 1 10000 force
execute if score bosstime time matches 11680 run scoreboard players add @a[tag=ffcbattle] dmg 1
execute if score bosstime time matches 11680 run particle minecraft:block grass 0 66 0 7 0.25 7 1 10000 force
execute if score bosstime time matches 11700 run scoreboard players add @a[tag=ffcbattle] dmg 1
execute if score bosstime time matches 11700 run particle minecraft:block grass 0 66 0 7 0.25 7 1 10000 force
execute if score bosstime time matches 11720 run scoreboard players add @a[tag=ffcbattle] dmg 2
execute if score bosstime time matches 11720 run particle minecraft:block grass 0 66 0 7 0.25 7 1 10000 force

execute if score bosstime time matches 11799 run tellraw @a {"text":"\u00a7e巴尔巴莉希娅发动了“重拳激震”。"}
execute if score bosstime time matches 11800 run scoreboard players add @a[tag=ffcbattle] dmg 2
execute if score bosstime time matches 11800 run particle minecraft:block grass 0 66 0 7 0.25 7 1 5000 force
execute if score bosstime time matches 11800 run particle minecraft:block grass_block 0 66 0 7 0.25 7 1 5000 force

execute if score bosstime time matches 11860 run function ff14:ffc/hair_armor/cast_inv

# end at 12020
