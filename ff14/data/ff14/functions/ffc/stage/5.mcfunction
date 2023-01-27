# 10:57 12100
execute if score bosstime time matches 12100 run function ff14:ffc/angry_wind
execute if score bosstime time matches 12119 run tellraw @a {"text":"\u00a7a巴尔巴莉希娅：清风拂面的感觉真好！"}
execute if score bosstime time matches 12120 run function ff14:ffc/hair_limit/chant

execute if score bosstime time matches 12180 run function ff14:ffc/normal_phase
execute if score bosstime time matches 12180 run tellraw @a {"text":"\u00a7e巴尔巴莉希娅发动了“咒发束缚”。"}

execute if score bosstime time matches 12181..12500 run function ff14:ffc/hair_limit/tick
execute if score bosstime time matches 12340 run function ff14:ffc/invis_wind/chant

execute if score bosstime time matches 12341 run scoreboard players set bsisLine bau 0
execute if score bosstime time matches 12342 run scoreboard players set bsisX bau 0
execute if score bosstime time matches 12343 run scoreboard players set bsisR bau 0
execute if score bosstime time matches 12344 run execute if predicate battle:r1d2 run scoreboard players set bsisLine bau 1
execute if score bosstime time matches 12345 run execute if predicate battle:r1d2 run scoreboard players set bsisX bau 1
execute if score bosstime time matches 12346 run execute if predicate battle:r1d2 run scoreboard players set bsisR bau 1


execute if score bosstime time matches 12519 run tellraw @a {"text":"\u00a7a巴尔巴莉希娅：做好准备吧！"}
execute if score bosstime time matches 12520 run function ff14:ffc/prepare_thorn

execute if score bosstime time matches 12620 run tellraw @a {"text":"\u00a7e巴尔巴莉希娅发动了“野蛮刺”。"}
execute if score bosstime time matches 12620 run function ff14:ffc/normal_phase
execute if score bosstime time matches 12620 if score bsisLine bau matches 1 run data merge entity @s {Pose:{RightArm:[45.0f, 180.0f, 180.0f]}}
# 读条结束后1s判定boss aoe
# 31s action aoe calc (2) (620tick)
execute if score bosstime time matches 12630 if score bsisLine bau matches 1 run data merge entity @s {Pose:{RightArm:[90.0f, 180.0f, 180.0f]}}
execute if score bosstime time matches 12640 run function ff14:ffc/action_aoe
execute if score bosstime time matches 12660 as @e[tag=thorn] at @s run scoreboard players set cc bau 1

execute if score bosstime time matches 12660 as @e[tag=thorn] at @s run function ff14:aoe/14
execute if score bosstime time matches 12680 as @e[tag=thorn] at @s run function ff14:ffc/thorn_down

execute if score bosstime time matches 12740 run tellraw @a {"text":"\u00a7e巴尔巴莉希娅发动了“咒发操控”。"}
execute if score bosstime time matches 12770 facing entity @e[tag=thorn,limit=1] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score bosstime time matches 12780 run function ff14:ffc/prepare_magic_rush


execute if score bosstime time matches 12820 if score bsisX bau matches 1 run tag @a[tag=ffcbattle] add ffxing
execute if score bosstime time matches 12820 if score bsisX bau matches 1 run function ff14:cachex
execute if score bosstime time matches 12820 unless score bsisX bau matches 1 run tag @a[tag=ffcbattle, sort=random, limit=2] add ffting
execute if score bosstime time matches 12820 unless score bsisX bau matches 1 run function ff14:cachet

execute if score bosstime time matches 12880 run function ff14:ffc/magic_rush
execute if score bosstime time matches 12920 run function ff14:ffc/magic_rush_2s

execute if score bosstime time matches 13020 run function ff14:ffc/void_wind/chant
execute if score bosstime time matches 13120 run function ff14:ffc/void_wind/cast
# 960 tick 点名判定
# 4s后瞬发
execute if score bosstime time matches 13210 run tp @s 0 65 0 ~ 0
execute if score bosstime time matches 13220 run function ff14:ffc/angry_wind

# 11:56
execute if score bosstime time matches 13280 run tellraw @a {"text":"\u00a7a巴尔巴莉希娅：胡闹的时间该结束了。"}
execute if score bosstime time matches 13280 run scoreboard players set bosschantmax bau 160
execute if score bosstime time matches 13280 run tellraw @a {"text":"\u00a7e巴尔巴莉希娅正在咏唱“大漩涡”。"}
execute if score bosstime time matches 13280 run bossbar set minecraft:bosschant name {"text":"\u00a7e大漩涡"}
execute if score bosstime time matches 13280 run function ff14:ffc/chant_phase

execute if score bosstime time matches 13400 run tellraw @a {"text":"\u00a7a巴尔巴莉希娅：永远埋葬在我的领域里吧！"}
execute if score bosstime time matches 13439 run tellraw @a {"text":"\u00a7e巴尔巴莉希娅咏唱了“大漩涡”。"}

execute if score bosstime time matches 13440 run function ff14:ffc/normal_phase
execute if score bosstime time matches 13440 run kill @a[tag=ffcbattle]
execute if score bosstime time matches 13460 if score m20 time matches 0 run kill @a[tag=ffcbattle]


# 13200 kill all...