# begin 6301
execute if score bosstime time matches 6460 run function ff14:ffc/angry_wind
# 6:13
execute if score bosstime time matches 6479 run tellraw @a {"text":"\u00a7a巴尔巴莉希娅：清风拂面的感觉真好！"}
execute if score bosstime time matches 6480 run function ff14:ffc/hair_limit/chant

execute if score bosstime time matches 6540 run function ff14:ffc/normal_phase
execute if score bosstime time matches 6540 run tellraw @a {"text":"\u00a7e巴尔巴莉希娅发动了“咒发束缚”。"}

execute if score bosstime time matches 6541..6860 run function ff14:ffc/hair_limit/tick
# 6:24
execute if score bosstime time matches 6700 run function ff14:ffc/invis_wind/chant

# 6:33
execute if score bosstime time matches 6879 run scoreboard players set bsisLine bau 0
execute if score bosstime time matches 6879 run scoreboard players set bsisX bau 0
execute if score bosstime time matches 6879 run scoreboard players set bsisR bau 0
execute if score bosstime time matches 6879 run execute if predicate battle:r1d2 run scoreboard players set bsisLine bau 1
execute if score bosstime time matches 6879 run execute if predicate battle:r1d2 run scoreboard players set bsisX bau 1
execute if score bosstime time matches 6879 run execute if predicate battle:r1d2 run scoreboard players set bsisR bau 1

execute if score bosstime time matches 6879 run tellraw @a {"text":"\u00a7a巴尔巴莉希娅：做好准备吧！"}
execute if score bosstime time matches 6880 run function ff14:ffc/prepare_thorn

execute if score bosstime time matches 6980 run tellraw @a {"text":"\u00a7e巴尔巴莉希娅发动了“野蛮刺”。"}
execute if score bosstime time matches 6980 run function ff14:ffc/normal_phase
execute if score bosstime time matches 6980 if score bsisLine bau matches 1 run data merge entity @s {Pose:{RightArm:[45.0f, 180.0f, 180.0f]}}
# 读条结束后1s判定boss aoe
# 31s action aoe calc (2) (620tick)
execute if score bosstime time matches 6990 if score bsisLine bau matches 1 run data merge entity @s {Pose:{RightArm:[90.0f, 180.0f, 180.0f]}}
execute if score bosstime time matches 7000 run function ff14:ffc/action_aoe
execute if score bosstime time matches 7020 as @e[tag=thorn] at @s run scoreboard players set cc bau 1

execute if score bosstime time matches 7020 as @e[tag=thorn] at @s run function ff14:aoe/14
execute if score bosstime time matches 7040 as @e[tag=thorn] at @s run function ff14:ffc/thorn_down

execute if score bosstime time matches 7100 run tellraw @a {"text":"\u00a7e巴尔巴莉希娅发动了“咒发操控”。"}
execute if score bosstime time matches 7130 facing entity @e[tag=thorn,limit=1] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score bosstime time matches 7140 run function ff14:ffc/prepare_magic_rush


execute if score bosstime time matches 7180 if score bsisX bau matches 1 run tag @a[tag=ffcbattle] add ffxing
execute if score bosstime time matches 7180 if score bsisX bau matches 1 run function ff14:cachex
execute if score bosstime time matches 7180 unless score bsisX bau matches 1 run tag @a[tag=ffcbattle, sort=random, limit=2] add ffting
execute if score bosstime time matches 7180 unless score bsisX bau matches 1 run function ff14:cachet

execute if score bosstime time matches 7240 run function ff14:ffc/magic_rush
execute if score bosstime time matches 7280 run function ff14:ffc/magic_rush_2s
# 960 tick 点名判定
# 4s后瞬发
execute if score bosstime time matches 7410 run tp @s 0 65 0
# 7:22
execute if score bosstime time matches 7420 run function ff14:ffc/angry_wind

execute if score bosstime time matches 7440 run tellraw @a {"text":"\u00a7a巴尔巴莉希娅：你们感受到我的风了吗？"}
execute if score bosstime time matches 7460 run function ff14:ffc/hair_limit/chant

execute if score bosstime time matches 7520 run function ff14:ffc/normal_phase
execute if score bosstime time matches 7520 run tellraw @a {"text":"\u00a7e巴尔巴莉希娅发动了“咒发束缚”。"}

execute if score bosstime time matches 7521..7840 run function ff14:ffc/hair_limit/tick
execute if score bosstime time matches 7680 run tag @a[sort=random,tag=ffcbattle,limit=2] add ffting
execute if score bosstime time matches 7680 run function ff14:cachet

# wait for 12s (more than game)
# for fast skills before.

execute if score bosstime time matches 7989 run tellraw @a {"text":"\u00a7a巴尔巴莉希娅：你能看穿这招吗？"}
execute if score bosstime time matches 7900 run function ff14:ffc/prepare_thorn
execute if score bosstime time matches 8000 run tellraw @a {"text":"\u00a7e巴尔巴莉希娅发动了“野蛮刺”。"}
execute if score bosstime time matches 8000 run function ff14:ffc/normal_phase
execute if score bosstime time matches 8000 if score bsisLine bau matches 1 run data merge entity @s {Pose:{RightArm:[45.0f, 180.0f, 180.0f]}}
execute if score bosstime time matches 8010 if score bsisLine bau matches 1 run data merge entity @s {Pose:{RightArm:[90.0f, 180.0f, 180.0f]}}
execute if score bosstime time matches 8020 run function ff14:ffc/action_aoe
execute if score bosstime time matches 8040 as @e[tag=thorn] at @s run scoreboard players set cc bau 1
execute if score bosstime time matches 8040 as @e[tag=thorn] at @s run function ff14:aoe/14
execute if score bosstime time matches 8060 as @e[tag=thorn] at @s run function ff14:ffc/thorn_down
execute if score bosstime time matches 8120 run tellraw @a {"text":"\u00a7e巴尔巴莉希娅发动了“咒发操控”。"}
execute if score bosstime time matches 8150 facing entity @e[tag=thorn,limit=1] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score bosstime time matches 8160 run function ff14:ffc/prepare_magic_rush
execute if score bosstime time matches 8200 if score bsisX bau matches 1 run tag @a[tag=ffcbattle] add ffxing
execute if score bosstime time matches 8200 if score bsisX bau matches 1 run function ff14:cachex
execute if score bosstime time matches 8200 unless score bsisX bau matches 1 run tag @a[tag=ffcbattle, sort=random, limit=2] add ffting
execute if score bosstime time matches 8200 unless score bsisX bau matches 1 run function ff14:cachet
execute if score bosstime time matches 8260 run function ff14:ffc/magic_rush
execute if score bosstime time matches 8300 run function ff14:ffc/magic_rush_2s

execute if score bosstime time matches 8400 run function ff14:ffc/void_wind/chant
execute if score bosstime time matches 8500 run function ff14:ffc/void_wind/cast

execute if score bosstime time matches 8540 run bossbar set minecraft:bosschant name {"text":"\u00a7e等待"}
execute if score bosstime time matches 8540 run function ff14:ffc/chant_phase
execute if score bosstime time matches 8640 run function ff14:ffc/normal_phase
execute if score bosstime time matches 8830 run tp @s 0 65 0

# 8:21
execute if score bosstime time matches 8840 run function ff14:ffc/angry_wind

execute if score bosstime time matches 8859 run tellraw @a {"text":"\u00a7a巴尔巴莉希娅：你们竟然能坚持到现在……"}
# 8:22
execute if score bosstime time matches 8860 run function ff14:ffc/hair_armor/chant
# +15s aoe by schedule

# 8:33
execute if score bosstime time matches 9080 run tellraw @a {"text":"\u00a7a巴尔巴莉希娅：这次我会让你彻底消失！"}
# 9160 tick end