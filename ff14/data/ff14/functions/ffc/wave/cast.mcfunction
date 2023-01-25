summon minecraft:armor_stand 0 63.5 0 {NoGravity:1b, Marker:1b, Tags:[bossas, ffcas, wave, waoe, aoeas, move1, w1], Invisible:1b}
summon minecraft:armor_stand 0 63.5 0 {NoGravity:1b, Marker:1b, Tags:[bossas, ffcas, wave, waoe, aoeas, move1, w2], Invisible:1b}
summon minecraft:armor_stand 0 63.5 0 {NoGravity:1b, Marker:1b, Tags:[bossas, ffcas, wave, waoe, aoeas, move1, w3], Invisible:1b}

execute as @e[tag=wave] run data modify entity @s ArmorItems[3] set value {id:"lime_wool", Count:1}

execute as @e[tag=wave] at @s rotated as @e[tag=boss,limit=1] run tp @s ~ ~ ~ ~ ~
execute as @e[tag=wave,tag=w2] at @s run tp @s ~ ~ ~ ~120 ~
execute as @e[tag=wave,tag=w3] at @s run tp @s ~ ~ ~ ~-120 ~
execute as @e[tag=boss] at @s run tp @s ~ ~ ~ ~-30 ~

scoreboard players set @e[tag=wave] timeToLive 201

tag @e remove wave