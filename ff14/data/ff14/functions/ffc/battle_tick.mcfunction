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

execute as @a[gamemode=adventure] run scoreboard players operation @s dps = @s dmgstats
execute as @a[gamemode=adventure] run scoreboard players operation @s dps *= 200 consts
execute as @a[gamemode=adventure] run scoreboard players operation @s dps *= 10 consts
execute as @a[gamemode=adventure] run scoreboard players operation @s dps /= bosstime time

scoreboard players set Total dps 0
scoreboard players operation Total dps += @a[scores={dps=1..}] dps


execute if score bosshp bau matches ..0 run function ff14:ffc/win

execute if score bosstime time matches 0.. run function ff14:ffc/p1
