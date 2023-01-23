scoreboard players set driveoff bas 10
execute as @e[tag=boss] at @s run effect give @a[tag=ffcbattle, distance=..3.5] minecraft:wither 1 6
tag @a remove driveoff
execute as @e[tag=boss] at @s run tag @a[tag=ffcbattle, distance=..3.5] add driveoff
execute as @e[tag=boss] at @s run function battle:driveoff

summon minecraft:area_effect_cloud 0 65 0 {Duration:10,Radius:3.5f,Particle:"minecraft:dust 0.125 0.25 0.125 1.0"}
summon minecraft:area_effect_cloud 0 65 0 {Duration:10,Radius:3.5f,Particle:"minecraft:dust 0.125 0.25 0.125 1.0"}

execute as @a[tag=driveoff, scores={chant=11..}] run function ff14:cancel_chant