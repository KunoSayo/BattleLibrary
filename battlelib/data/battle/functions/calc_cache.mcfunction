execute as @a[scores={dmgcache=1..}] run scoreboard players operation @s dmg += @s dmgcache
scoreboard players reset @a dmgcache

execute as @a store result score @s X run data get entity @s Pos[0] 10000
execute as @a store result score @s Y run data get entity @s Pos[1] 10000
execute as @a store result score @s Z run data get entity @s Pos[2] 10000