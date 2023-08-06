
execute if score @s liveticks matches 1 run summon minecraft:item_display ~ ~ ~ {"item_display":"none", "item":{"id":"minecraft:blue_stained_glass", Count:1b, tag:{CustomModelData:99614}}, transformation:[30.0,0.0,0.0,0.0,0.0,1.0,0.0,0.0,0.0,0.0,30.0,0.0,0.0,0.0,0.0,1.0], Tags:["sas"]}
execute if score @s liveticks matches 1 run scoreboard players set @e[tag=sas] timeToLive 100
execute if score @s liveticks matches 1 positioned 0.0 60.6 0.0 run function ff14:std/rs/cow301s
execute if score @s liveticks matches 21 positioned 0.0 60.6 0.0 run function ff14:std/rs/cow301s
execute if score @s liveticks matches 41 positioned 0.0 60.6 0.0 run function ff14:std/rs/cow301s
execute if score @s liveticks matches 61 positioned 0.0 60.6 0.0 run function ff14:std/rs/cow301s
execute if score @s liveticks matches 81 positioned 0.0 60.6 0.0 run function ff14:std/rs/cow301s

execute if score @s liveticks matches 101 as @a[tag=gaming, distance=..15] run damage @s 10 battle:true_damage
execute if score @s liveticks matches 101 run scoreboard players set cc bau 8
execute if score @s liveticks matches 101 run function ff14:aoe/15
execute if score @s liveticks matches 102.. run kill @s
