execute store result score ones bac run execute if entity @a[tag=ffcbattle,scores={hair=1..}]

function battle:calc_cache
scoreboard players set x bac 0
scoreboard players set z bac 0

scoreboard players operation x bac += @a[tag=ffcbattle,scores={hair=1..}] X
scoreboard players operation z bac += @a[tag=ffcbattle,scores={hair=1..}] Z

scoreboard players operation x bac /= ones bac
scoreboard players operation z bac /= ones bac


summon minecraft:armor_stand 0 65 0 {NoGravity:1b, Marker:1b, Tags:[temp,block, tlas], Invisible:1b}

execute store result entity @e[tag=tlas,limit=1] Pos[0] double 0.0001 run scoreboard players get x bac
execute store result entity @e[tag=tlas,limit=1] Pos[2] double 0.0001 run scoreboard players get z bac

execute positioned as @e[tag=tlas] run tp @a[tag=ffcbattle,scores={hair=1..}] ~ ~ ~

kill @e[tag=temp]

scoreboard players set limited bau 1