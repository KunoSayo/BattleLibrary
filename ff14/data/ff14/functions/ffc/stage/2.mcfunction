execute if score m20 time matches 10 positioned 0 65 0 run function ff14:ffc/border
execute positioned 0 65 0 run effect give @a[tag=ffcbattle,distance=10..] minecraft:wither 15 66
execute positioned 0 65 0 run effect give @a[tag=ffcbattle,distance=10..] minecraft:poison 15 66
execute positioned 0 65 0 run effect give @a[tag=ffcbattle,distance=10..] minecraft:hunger 14 255


execute if score bosstime time matches 3420 run tp @s 0 65 0 ~ 0
execute if score bosstime time matches 3420 run scoreboard players set border bau 0
execute if score bosstime time matches 3420 run particle minecraft:block grass 0 66 0 7 0.25 7 1 10000 force
execute if score bosstime time matches 3420 run summon minecraft:lightning_bolt 0 99 0
execute if score bosstime time matches 3420 run scoreboard players add @a[tag=ffcbattle] dmg 4

execute if score bosstime time matches 3500 run tellraw @a {"text":"\u00a7a巴尔巴莉希娅：你能躲得开吗！"}
execute if score bosstime time matches 3520 run function ff14:ffc/cruel_charge/start

execute if score bosstime time matches 3601 run tellraw @a {"text":"\u00a7a巴尔巴莉希娅：我的攻击迅疾如风！"}
execute if score bosstime time matches 3680 run function ff14:ffc/warn_wind/cast

execute if score bosstime time matches 3840 run tellraw @a {"text":"\u00a7e巴尔巴莉希娅发动了“咒发操控”。"}


execute if score bosstime time matches 3900 as @a[tag=ffcbattle] at @s run particle minecraft:dust_color_transition 0.375 0.25 0 1 1 0 0 ~ 67 ~ 0.125 0.5 0.125 1000 100
execute if score bosstime time matches 3900 run tag @a[tag=ffcbattle] add ffxing
execute if score bosstime time matches 3900 run function ff14:cachex
execute if score bosstime time matches 3920 as @a[tag=ffcbattle] at @s run particle minecraft:dust_color_transition 0.375 0.25 0 1 1 0 0 ~ 67 ~ 0.125 0.5 0.125 1000 100
execute if score bosstime time matches 3940 as @a[tag=ffcbattle] at @s run particle minecraft:dust_color_transition 0.375 0.25 0 1 1 0 0 ~ 67 ~ 0.125 0.5 0.125 1000 100
execute if score bosstime time matches 3960 as @a[tag=ffcbattle] at @s run particle minecraft:dust_color_transition 0.375 0.25 0 1 1 0 0 ~ 67 ~ 0.125 0.5 0.125 1000 100
execute if score bosstime time matches 3980 as @a[tag=ffcbattle] at @s run particle minecraft:dust_color_transition 0.375 0.25 0 1 1 0 0 ~ 67 ~ 0.125 0.5 0.125 1000 100
execute if score bosstime time matches 4000 as @a[tag=ffcbattle] at @s run summon minecraft:armor_stand ~ 65 ~ {NoGravity:1b, Marker:1b, Tags:[bossas, ffcas, aoeas, aoe7.5], Invisible:1b}
execute if score bosstime time matches 4000 run scoreboard players set @e[tag=aoe7.5] timeToLive 60


execute if score bosstime time matches 4060 run tag @a[tag=ffcbattle,sort=random,limit=2] add ffting
execute if score bosstime time matches 4060 run function ff14:cachet

execute if score bosstime time matches 4060 run function ff14:ffc/tornado/start

execute if score bosstime time matches 4279 run tellraw @a {"text":"\u00a7a巴尔巴莉希娅：承受我的怒火！"}
execute if score bosstime time matches 4280 run function ff14:ffc/cruel_charge/start
execute if score bosstime time matches 4361 run tellraw @a {"text":"\u00a7a巴尔巴莉希娅：你太得意忘形了！"}

execute if score bosstime time matches 4420 run tp @s 0 65 0 ~ 0
execute if score bosstime time matches 4460 run effect give @a[tag=ffcbattle] minecraft:poison 8 1
execute if score bosstime time matches 3840 run tellraw @a {"text":"\u00a7e巴尔巴莉希娅发动了“咒发操控”。"}


execute if score bosstime time matches 4479 run tellraw @a {"text":"\u00a7e巴尔巴莉希娅发动了“怒拳连震”。"}
execute if score bosstime time matches 4480 run scoreboard players add @a[tag=ffcbattle] dmg 1
execute if score bosstime time matches 4480 run particle minecraft:block grass 0 66 0 7 0.25 7 1 10000 force

execute if score bosstime time matches 4520 run scoreboard players add @a[tag=ffcbattle] dmg 1
execute if score bosstime time matches 4520 run particle minecraft:block grass 0 66 0 7 0.25 7 1 10000 force

execute if score bosstime time matches 4560 run scoreboard players add @a[tag=ffcbattle] dmg 1
execute if score bosstime time matches 4560 run particle minecraft:block grass 0 66 0 7 0.25 7 1 10000 force
execute if score bosstime time matches 4580 run scoreboard players add @a[tag=ffcbattle] dmg 1
execute if score bosstime time matches 4580 run particle minecraft:block grass 0 66 0 7 0.25 7 1 10000 force
execute if score bosstime time matches 4600 run scoreboard players add @a[tag=ffcbattle] dmg 1
execute if score bosstime time matches 4600 run particle minecraft:block grass 0 66 0 7 0.25 7 1 10000 force
execute if score bosstime time matches 4620 run scoreboard players add @a[tag=ffcbattle] dmg 2
execute if score bosstime time matches 4620 run particle minecraft:block grass 0 66 0 7 0.25 7 1 10000 force

execute if score bosstime time matches 4699 run tellraw @a {"text":"\u00a7e巴尔巴莉希娅发动了“重拳激震”。"}
execute if score bosstime time matches 4700 run scoreboard players add @a[tag=ffcbattle] dmg 2
execute if score bosstime time matches 4700 run particle minecraft:block grass 0 66 0 7 0.25 7 1 5000 force
execute if score bosstime time matches 4700 run particle minecraft:block grass_block 0 66 0 7 0.25 7 1 5000 force

execute if score bosstime time matches 4700 as @a[tag=ffcbattle] at @s run summon minecraft:armor_stand ~ 65 ~ {NoGravity:1b, Marker:1b, Tags:[bossas, ffcas, aoeas, aoe3.5, ypui0], Invisible:1b}
execute if score bosstime time matches 4700 run scoreboard players set @e[tag=ypui0] timeToLive 60

execute if score bosstime time matches 4740 as @a[tag=ffcbattle] at @s run summon minecraft:armor_stand ~ 65 ~ {NoGravity:1b, Marker:1b, Tags:[bossas, ffcas, aoeas, aoe3.5, ypui1], Invisible:1b}
execute if score bosstime time matches 4740 run scoreboard players set @e[tag=ypui1] timeToLive 60

execute if score bosstime time matches 4740 run function ff14:ffc/cruel_charge/start


execute if score bosstime time matches 4780 as @a[tag=ffcbattle] at @s run summon minecraft:armor_stand ~ 65 ~ {NoGravity:1b, Marker:1b, Tags:[bossas, ffcas, aoeas, aoe3.5, ypui2], Invisible:1b}
execute if score bosstime time matches 4780 run scoreboard players set @e[tag=ypui2] timeToLive 60

execute if score bosstime time matches 4820 as @a[tag=ffcbattle] at @s run summon minecraft:armor_stand ~ 65 ~ {NoGravity:1b, Marker:1b, Tags:[bossas, ffcas, aoeas, aoe3.5, ypui3], Invisible:1b}
execute if score bosstime time matches 4820 run scoreboard players set @e[tag=ypui3] timeToLive 60

execute if score bosstime time matches 4880 run tag @r[tag=ffcbattle] add ffhing
execute if score bosstime time matches 4880 run function ff14:cacheh
execute if score bosstime time matches 4880 run function ff14:ffc/impact/start

execute if score bosstime time matches 4900 run tag @r[tag=ffcbattle,tag=!ffhing] add ffting
execute if score bosstime time matches 4900 run function ff14:cachet

execute if score bosstime time matches 5059 run tp @s @a[tag=ffting,limit=1]
execute if score bosstime time matches 5060 run tp @s ~ ~ ~ ~ 0
execute if score bosstime time matches 5120 run tp @s 0 65 0 ~ 0
execute if score bosstime time matches 5160 run function ff14:ffc/cruel_charge/start

# chant to boyuli is 9s = 180tick
# 240+180=420
execute if score bosstime time matches 5240 run function ff14:ffc/chant_limit
execute if score bosstime time matches 5300 run function ff14:ffc/normal_phase
execute if score bosstime time matches 5300 run tellraw @a {"text":"\u00a7e巴尔巴莉希娅发动了“咒发拘束”。"}
execute if score bosstime time matches 5320 run function ff14:ffc/start_limit
execute if score bosstime time matches 5320 run tp @s 0 65 0 ~ 0
execute if score bosstime time matches 5360 run function ff14:ffc/start_limit_2
execute if score bosstime time matches 5380 run function ff14:ffc/start_limit_3_p2

# 5:23
# 5:34 t
execute if score bosstime time matches 5420 run function ff14:ffc/wave/start

execute if score bosstime time matches 5620 run function ff14:ffc/tornado/start
execute if score bosstime time matches 5640 run tag @a[sort=random,limit=2,tag=ffcbattle] add ffting
execute if score bosstime time matches 5640 run function ff14:cachet

execute if score bosstime time matches 5800 run effect give @a[tag=ffcbattle] minecraft:poison 8 1

execute if score bosstime time matches 5820 run tellraw @a {"text":"\u00a7a巴尔巴莉希娅：不要小看我！"}


execute if score bosstime time matches 5839 run tellraw @a {"text":"\u00a7e巴尔巴莉希娅发动了“怒拳连震”。"}
execute if score bosstime time matches 5840 run scoreboard players add @a[tag=ffcbattle] dmg 1
execute if score bosstime time matches 5840 run particle minecraft:block grass 0 66 0 7 0.25 7 1 10000 force

execute if score bosstime time matches 5880 run scoreboard players add @a[tag=ffcbattle] dmg 1
execute if score bosstime time matches 5880 run particle minecraft:block grass 0 66 0 7 0.25 7 1 10000 force

execute if score bosstime time matches 5920 run scoreboard players add @a[tag=ffcbattle] dmg 1
execute if score bosstime time matches 5920 run particle minecraft:block grass 0 66 0 7 0.25 7 1 10000 force
execute if score bosstime time matches 5940 run scoreboard players add @a[tag=ffcbattle] dmg 1
execute if score bosstime time matches 5940 run particle minecraft:block grass 0 66 0 7 0.25 7 1 10000 force
execute if score bosstime time matches 5960 run scoreboard players add @a[tag=ffcbattle] dmg 1
execute if score bosstime time matches 5960 run particle minecraft:block grass 0 66 0 7 0.25 7 1 10000 force
execute if score bosstime time matches 5980 run scoreboard players add @a[tag=ffcbattle] dmg 2
execute if score bosstime time matches 5980 run particle minecraft:block grass 0 66 0 7 0.25 7 1 10000 force

execute if score bosstime time matches 6059 run tellraw @a {"text":"\u00a7e巴尔巴莉希娅发动了“重拳激震”。"}
execute if score bosstime time matches 6060 run scoreboard players add @a[tag=ffcbattle] dmg 2
execute if score bosstime time matches 6060 run particle minecraft:block grass 0 66 0 7 0.25 7 1 5000 force
execute if score bosstime time matches 6060 run particle minecraft:block grass_block 0 66 0 7 0.25 7 1 5000 force

execute if score bosstime time matches 6140 run function ff14:ffc/hair_armor/cast_inv
