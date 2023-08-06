execute if score ffc bau matches 1.. run fill -20 64 -20 20 64 20 grass_block replace brown_terracotta
execute if score ffc bau matches 1.. run scoreboard players remove ffc bau 1
execute unless score ffc bau matches 1.. run fill -20 64 -20 20 64 20 brown_terracotta replace grass_block
execute if score ffc bau matches 0 as @a at @s run playsound minecraft:block.grass.break player @s ~ ~ ~ 1000 1
execute unless score ffc bau matches 1.. run scoreboard players reset ffc

execute as @a[tag=ffcbattle] at @s run spawnpoint @s ~ 66 ~

execute as @e[type=armor_stand, tag=boss] at @s run function ff14:ffc/stage/tick

execute as @a unless data entity @s ActiveEffects[{Id:17}] run effect give @s minecraft:saturation 9 0 true
execute as @a if data entity @s ActiveEffects[{Id:17}] run effect clear @s minecraft:saturation


scoreboard players set @a[scores={song_ffbatl=5161..99999999}] song_ffbatl 0