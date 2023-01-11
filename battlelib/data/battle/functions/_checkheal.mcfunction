execute if score @s heal matches 1 run effect give @s minecraft:instant_health 1 0
execute if score @s heal matches 1 run scoreboard players remove @s heal 1
execute if score @s heal matches 2..3 run effect give @s minecraft:instant_health 1 1
execute if score @s heal matches 2..3 run scoreboard players remove @s heal 2
execute if score @s heal matches 4.. run effect give @s minecraft:instant_health 1 2
execute if score @s heal matches 4.. run scoreboard players remove @s heal 4

execute if score @s heal matches 0 run scoreboard players reset @s heal
scoreboard players set @s healcd 20