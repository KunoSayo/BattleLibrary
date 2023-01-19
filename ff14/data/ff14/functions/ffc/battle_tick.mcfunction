execute as @a[tag=!build] run function ff14:ffcui
execute as @a[tag=!build] run function ff14:gcd_ui

scoreboard players set cc bau 4
execute if score m10 time matches 0 as @e[tag=boss] at @s run function ff14:tc/3.5

execute store result bossbar minecraft:boss value run scoreboard players get bosshp bau


scoreboard players operation p bac = bosshp bau
scoreboard players operation p bac *= 100 consts
scoreboard players operation p bac /= 50529 consts
execute if score p bac matches 1.. run bossbar set minecraft:boss name [{"score":{"name":"p", "objective":"bac"}, "color":"red"}, {"text":"% 巴尔巴莉希娅", "color":"red"}]
execute if score p bac matches 0 run scoreboard players operation pp bac = bosshp bau
execute if score p bac matches 0 run scoreboard players operation pp bac *= 1000 consts
execute if score p bac matches 0 run scoreboard players operation pp bac /= 50529 consts
execute if score pp bac matches 0 run scoreboard players operation pp bac = 1 consts
execute if score p bac matches 0 run bossbar set minecraft:boss name [{"text":"0.", "color":"red"},{"score":{"name":"pp", "objective":"bac"}, "color":"red"}, {"text":"% 巴尔巴莉希娅", "color":"red"}]

scoreboard players add bosstime time 1


execute as @a[gamemode=adventure] run scoreboard players operation @s bac = @s dmgstats
execute as @a[gamemode=adventure] run scoreboard players operation @s bac *= 200 consts
execute as @a[gamemode=adventure] run scoreboard players operation @s bac *= 10 consts
execute as @a[gamemode=adventure] run scoreboard players operation @s bac /= bosstime time
execute as @a[gamemode=adventure] run scoreboard players operation @s dps = @s bac

scoreboard players set *Total bac 0
scoreboard players operation *Total bac += @a[scores={dps=1..}] dps
scoreboard players operation *Total dps = *Total bac
scoreboard players operation *Seconds bac = bosstime time
scoreboard players operation *Seconds bac /= 20 consts
scoreboard players operation *Seconds dps = *Seconds bac

execute if score bosshp bau matches ..0 run function ff14:ffc/win

execute if score bosstime time matches 0.. as @e[tag=boss,limit=1] at @s run function ff14:ffc/p1

scoreboard players add bosschant bau 1
execute store result bossbar minecraft:bosschant value run scoreboard players get bosschant bau
execute if score bosschant bau > bosschantmax bau run bossbar set minecraft:bosschant visible false

execute if score bosshp bau matches 1.. unless entity @a[tag=ffcbattle] run function ff14:ffc/fail


# all as effects if on area.
execute if score m5 time matches 0 as @e[tag=thorn, tag=eac] at @s positioned ~ ~2 ~ run function battle:forward

execute if score m10 time matches 0 as @e[tag=thorn, tag=!eac] at @s positioned ~ ~1 ~ run particle minecraft:dust 0 1 0 1 ~ ~ ~ 0.0675 0.5 0.0675 1 25