summon minecraft:armor_stand 0 65 0 {NoGravity:1b, Marker:1b, Tags:[temp,block, tlas], Invisible:1b}


execute store result score ones bac run execute if entity @a[tag=ffcbattle,scores={hair=1..}]

function battle:calc_cache
scoreboard players set x bac 0
scoreboard players set z bac 0

scoreboard players operation x bac += @a[tag=ffcbattle,scores={hair=1..}] X
scoreboard players operation z bac += @a[tag=ffcbattle,scores={hair=1..}] Z

scoreboard players operation x bac /= ones bac
scoreboard players operation z bac /= ones bac

execute store result entity @e[tag=tlas,limit=1] Pos[0] double 0.0001 run scoreboard players get x bac
execute store result entity @e[tag=tlas,limit=1] Pos[2] double 0.0001 run scoreboard players get z bac

scoreboard players set cc bau 11

execute if score m4 time matches 0 if score ones bac matches 2.. if score limited bau matches 1 as @e[tag=tlas] at @s run function battle:circle/5.0

scoreboard players set cc bau 1
execute if score m4 time matches 0 if score ones bac matches 2.. as @e[tag=tlas] at @s run function battle:circle/0.5

execute if score ones bac matches 2.. as @a[scores={hair=1..}] at @s positioned ~ 65 ~ facing entity @e[tag=tlas, limit=1] eyes rotated ~ 0 run function battle:forward

execute if score ones bac matches 2.. if score limited bau matches 1 as @e[tag=tlas] at @s as @a[tag=ffcbattle,scores={hair=1..},distance=5.., tag=!noskill] run function ff14:ffc/hair_limit/out

kill @e[tag=temp]

