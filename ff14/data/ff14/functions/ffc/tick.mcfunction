execute if score ffc bau matches 1.. run fill -20 65 -20 20 65 20 grass replace air
execute if score ffc bau matches 1.. run scoreboard players remove ffc bau 1
execute unless score ffc bau matches 1.. run fill -20 65 -20 20 65 20 air replace grass
execute unless score ffc bau matches 1.. run scoreboard players reset ffc

scoreboard players remove @a[scores={ffccd=1..}] ffccd 1
scoreboard players reset @a[scores={ffccd=0}] ffccd

execute as @a[tag=ffcbattle] at @s run spawnpoint @s ~ 66 ~

execute as @e[type=armor_stand, tag=boss] at @s run function ff14:ffc/stage/tick

kill @e[type=item]
execute as @a unless data entity @s ActiveEffects[{Id:17}] run effect give @s minecraft:saturation 9 0 true
execute as @a if data entity @s ActiveEffects[{Id:17}] run effect clear @s minecraft:saturation
