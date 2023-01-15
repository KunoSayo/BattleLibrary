
tag @s add clearoffitem

execute if score type bac matches 21 run tag @s add atk
execute if score type bac matches 20 run tag @s add heal
execute if score type bac matches 26 run tag @s add respawn

execute if score type bac matches 20..25 run scoreboard players set @s maxchant 30
execute if score type bac matches 20..25 run scoreboard players set @s chant 30
execute if score type bac matches 26 run scoreboard players set @s maxchant 160
execute if score type bac matches 26 run scoreboard players set @s chant 160

execute if score type bac matches 19..26 run scoreboard players set @s gcd 50
execute if score type bac matches 19 run function ff14:dd