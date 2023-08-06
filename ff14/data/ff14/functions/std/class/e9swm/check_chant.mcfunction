
tag @s add clearoffitem

execute if score type bac matches 21 run tag @s add atk
execute if score type bac matches 20 run tag @s add heal
execute if score type bac matches 26 run tag @s add respawn

execute if score type bac matches 21 run scoreboard players set @s maxchant 100
execute if score type bac matches 20 run scoreboard players set @s maxchant 20
execute if score type bac matches 20..21 run scoreboard players operation @s chant = @s maxchant
execute if score type bac matches 26 run scoreboard players set @s maxchant 160
execute if score type bac matches 26 run scoreboard players set @s chant 160


execute if score type bac matches 19..26 run scoreboard players set @s gcd 50
execute if score type bac matches 19 run function ff14:std/class/e9swm/gain_score