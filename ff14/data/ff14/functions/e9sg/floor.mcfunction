# use liveticks to control floor
# 0 ~ 600 clone
# 601 ~ 700 destory


execute store result score ones bac run execute positioned ~-4.0 60.0 ~-4.0 if entity @e[tag=gaming,dx=7,dy=4,dz=7]

# no ones around...
# reset cd if not disappear

execute if score @s[tag=!disappear] liveticks matches 0..600 if score ones bac matches 0 run scoreboard players set @s liveticks 0
execute if score @s[tag=!disappear] liveticks matches 0..600 if score ones bac matches 0 run clone -5 22 69 2 22 62 ~-4 ~-1 ~-4
execute if score @s[tag=!disappear] liveticks matches 0..600 if score ones bac matches 0 run return 0

# warning effects
execute if score @s liveticks matches 500 positioned ~0.0 ~ ~0.0 run function ff14:std/rs/rw81s
execute if score @s liveticks matches 510 positioned ~0.0 ~0.0025 ~0.0 run function ff14:std/rs/rw81s
execute if score @s liveticks matches 520 positioned ~0.0 ~0.005 ~0.0 run function ff14:std/rs/rw81s
execute if score @s liveticks matches 530 positioned ~0.0 ~ ~0.0 run function ff14:std/rs/rw81s
execute if score @s liveticks matches 540 positioned ~0.0 ~0.0025 ~0.0 run function ff14:std/rs/rw81s
execute if score @s liveticks matches 550 positioned ~0.0 ~0.005 ~0.0 run function ff14:std/rs/rw81s
execute if score @s liveticks matches 560 positioned ~0.0 ~ ~0.0 run function ff14:std/rs/rw81s
execute if score @s liveticks matches 570 positioned ~0.0 ~0.0025 ~0.0 run function ff14:std/rs/rw81s
execute if score @s[tag=!disappear] liveticks matches 580 positioned ~0.0 ~0.005 ~0.0 run function ff14:std/rs/rw81s

execute if score ones bac matches 2.. run tag @s add disappear

execute if score @s[tag=disappear] liveticks matches ..579 run scoreboard players set @s liveticks 580

execute if score @s[tag=disappear] liveticks matches 580 positioned ~0.0 ~0.005 ~0.0 run function ff14:std/rs/rr8.5s
execute if score @s[tag=disappear] liveticks matches 585 positioned ~0.0 ~0.005 ~0.0 run function ff14:std/rs/rr8.5s
execute if score @s[tag=disappear] liveticks matches 590 positioned ~0.0 ~0.005 ~0.0 run function ff14:std/rs/rr8.5s

execute if score @s liveticks matches 601 run fill ~-4 ~-1 ~-4 ~4 ~-1 ~4 air destroy


# time to rollback
execute if score @s liveticks matches 701.. run tag @s remove disappear
execute if score @s liveticks matches 701.. run clone -5 22 69 2 22 62 ~-4 ~-1 ~-4
execute if score @s liveticks matches 701.. run scoreboard players set @s liveticks 0

