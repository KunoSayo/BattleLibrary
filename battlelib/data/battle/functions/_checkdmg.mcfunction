
execute if score @s dmg matches 1 run effect give @s minecraft:instant_damage 1 0
execute if score @s dmg matches 1 run scoreboard players remove @s dmg 1
execute if score @s dmg matches 2..3 run effect give @s minecraft:instant_damage 1 1
execute if score @s dmg matches 2..3 run scoreboard players remove @s dmg 2
execute if score @s dmg matches 4..7 run effect give @s minecraft:instant_damage 1 2
execute if score @s dmg matches 4..7 run scoreboard players remove @s dmg 4
execute if score @s dmg matches 8.. run effect give @s minecraft:instant_damage 1 3
execute if score @s dmg matches 8.. run scoreboard players remove @s dmg 8

execute if score @s dmg matches ..0 run scoreboard players reset @s dmg
scoreboard players set @s dmgcd 20