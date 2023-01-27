execute if score bosstime time matches 1 run tellraw @a {"text":"\u00a7a巴尔巴莉希娅：何等美味的以太……"}
execute if score bosstime time matches 100 run tellraw @a {"text":"\u00a7a巴尔巴莉希娅：会令我的头发更加艳丽！"}
execute if score bosstime time matches 200 run function ff14:ffc/void_wind/chant

# 15s
execute if score bosstime time matches 300 run function ff14:ffc/void_wind/cast
# 23s
execute if score bosstime time matches 460 run function ff14:ffc/angry_wind

# first turn!

execute if score bosstime time matches 499 run tellraw @a {"text":"\u00a7a巴尔巴莉希娅：你能看穿这招吗？"}
execute if score bosstime time matches 500 run function ff14:ffc/prepare_thorn
# video 1:22 = 30s boss time
execute if score bosstime time matches 600 run tellraw @a {"text":"\u00a7e巴尔巴莉希娅发动了“野蛮刺”。"}
execute if score bosstime time matches 600 run function ff14:ffc/normal_phase
execute if score bosstime time matches 600 if score bsisLine bau matches 1 run data merge entity @s {Pose:{RightArm:[45.0f, 180.0f, 180.0f]}}
# 读条结束后1s判定boss aoe
# 31s action aoe calc (2) (620tick)
execute if score bosstime time matches 610 if score bsisLine bau matches 1 run data merge entity @s {Pose:{RightArm:[90.0f, 180.0f, 180.0f]}}
execute if score bosstime time matches 620 run function ff14:ffc/action_aoe
execute if score bosstime time matches 640 as @e[tag=thorn] at @s run scoreboard players set cc bau 1
execute if score bosstime time matches 640 as @e[tag=thorn] at @s run function ff14:aoe/14
execute if score bosstime time matches 660 as @e[tag=thorn] at @s run function ff14:ffc/thorn_down


execute if score bosstime time matches 720 run tellraw @a {"text":"\u00a7e巴尔巴莉希娅发动了“咒发操控”。"}
execute if score bosstime time matches 750 facing entity @e[tag=thorn,limit=1] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score bosstime time matches 760 run function ff14:ffc/prepare_magic_rush

# 咒发突袭开始吟唱2s后的时候点名
execute if score bosstime time matches 800 if score bsisX bau matches 1 run tag @a[tag=ffcbattle] add ffxing
execute if score bosstime time matches 800 if score bsisX bau matches 1 run function ff14:cachex
execute if score bosstime time matches 800 unless score bsisX bau matches 1 run tag @a[tag=ffcbattle, sort=random, limit=2] add ffting
execute if score bosstime time matches 800 unless score bsisX bau matches 1 run function ff14:cachet

execute if score bosstime time matches 860 run function ff14:ffc/magic_rush
execute if score bosstime time matches 900 run function ff14:ffc/magic_rush_2s
# 960 tick 点名判定
# 4s后瞬发
execute if score bosstime time matches 1030 run tp @s 0 65 0
execute if score bosstime time matches 1040 run function ff14:ffc/angry_wind

execute if score bosstime time matches 1059 run tellraw @a {"text":"\u00a7a巴尔巴莉希娅：做好准备吧！"}
# 1s后第二波 开始复读
# const = 1060-500=560
execute if score bosstime time matches 1060 run function ff14:ffc/prepare_thorn
# video 1:22 = 30s boss time
execute if score bosstime time matches 1160 run tellraw @a {"text":"\u00a7e巴尔巴莉希娅发动了“野蛮刺”。"}
execute if score bosstime time matches 1160 run function ff14:ffc/normal_phase
execute if score bosstime time matches 1160 if score bsisLine bau matches 1 run data merge entity @s {Pose:{RightArm:[45.0f, 180.0f, 180.0f]}}
# 读条结束后1s判定boss aoe
# 31s action aoe calc (2) (620tick)
execute if score bosstime time matches 1170 if score bsisLine bau matches 1 run data merge entity @s {Pose:{RightArm:[90.0f, 180.0f, 180.0f]}}
execute if score bosstime time matches 1180 run function ff14:ffc/action_aoe
execute if score bosstime time matches 1200 as @e[tag=thorn] at @s run scoreboard players set cc bau 1
execute if score bosstime time matches 1200 as @e[tag=thorn] at @s run function ff14:aoe/14
execute if score bosstime time matches 1220 as @e[tag=thorn] at @s run function ff14:ffc/thorn_down


execute if score bosstime time matches 1280 run tellraw @a {"text":"\u00a7e巴尔巴莉希娅发动了“咒发操控”。"}
execute if score bosstime time matches 1310 facing entity @e[tag=thorn,limit=1] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score bosstime time matches 1320 run function ff14:ffc/prepare_magic_rush


# 咒发突袭开始吟唱2s后的时候点名
execute if score bosstime time matches 1360 if score bsisX bau matches 1 run tag @a[tag=ffcbattle] add ffxing
execute if score bosstime time matches 1360 if score bsisX bau matches 1 run function ff14:cachex
execute if score bosstime time matches 1360 unless score bsisX bau matches 1 run tag @a[tag=ffcbattle, sort=random, limit=2] add ffting
execute if score bosstime time matches 1360 unless score bsisX bau matches 1 run function ff14:cachet

execute if score bosstime time matches 1420 run function ff14:ffc/magic_rush
execute if score bosstime time matches 1460 run function ff14:ffc/magic_rush_2s

execute if score bosstime time matches 1560 run function ff14:ffc/void_wind/chant
execute if score bosstime time matches 1660 run function ff14:ffc/void_wind/cast


execute if score bosstime time matches 1700 run bossbar set minecraft:bosschant name {"text":"\u00a7e等待"}
execute if score bosstime time matches 1700 run function ff14:ffc/chant_phase
execute if score bosstime time matches 1800 run function ff14:ffc/normal_phase
execute if score bosstime time matches 1990 run tp @s 0 65 0

execute if score bosstime time matches 2000 run function ff14:ffc/angry_wind
execute if score bosstime time matches 2019 run tellraw @a {"text":"\u00a7a巴尔巴莉希娅：我的头发自由如风！"}

execute if score bosstime time matches 2020 run function ff14:ffc/chant_limit
# 3.0s 读完条
# 4.0s aoe判定 玩家不能操作 3s
# 6.0s tp
execute if score bosstime time matches 2080 run function ff14:ffc/normal_phase
execute if score bosstime time matches 2080 run tellraw @a {"text":"\u00a7e巴尔巴莉希娅发动了“咒发拘束”。"}
execute if score bosstime time matches 2100 run function ff14:ffc/start_limit
execute if score bosstime time matches 2140 run function ff14:ffc/start_limit_2
execute if score bosstime time matches 2160 run function ff14:ffc/start_limit_3

execute if score bosstime time matches 2259 run tellraw @a {"text":"\u00a7a巴尔巴莉希娅：既柔软，又强大！"}
execute if score bosstime time matches 2260 run function ff14:ffc/invis_wind/chant


execute if score bosstime time matches 2480 run function ff14:ffc/void_wind/chant
execute if score bosstime time matches 2580 run function ff14:ffc/void_wind/cast

execute if score bosstime time matches 2740 run function ff14:ffc/angry_wind
execute if score bosstime time matches 2759 run tellraw @a {"text":"\u00a7a巴尔巴莉希娅：你们竟然能坚持到现在……"}

execute if score bosstime time matches 2760 run function ff14:ffc/hair_armor/chant
execute if score bosstime time matches 2859 run tellraw @a {"text":"\u00a7a巴尔巴莉希娅：那我也要拿出真正的实力了！"}


execute if score bosstime time matches 3200 run tellraw @a {"text":"\u00a7e巴尔巴莉希娅发动了“落狱煞”。"}
execute if score bosstime time matches 3200 run tp @s 0 100 0
execute if score bosstime time matches 3260 run tellraw @a {"text":"\u00a7a巴尔巴莉希娅：啊哈哈哈哈哈！"}
execute if score bosstime time matches 3360 run tellraw @a {"text":"\u00a7a巴尔巴莉希娅：把你们全部干掉！"}
