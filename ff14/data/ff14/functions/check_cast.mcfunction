execute if score @s chant matches 0.. run scoreboard players reset type bac
execute if score @s chant matches 0.. run scoreboard players reset slot bac

execute if score type bac matches 21 run tag @s add atk
execute if score type bac matches 20 run tag @s add heal
execute if score type bac matches 15 run tag @s add ffc
execute if score type bac matches 26 run tag @s add respawn

execute if score type bac matches 15..25 run scoreboard players set @s maxchant 30
execute if score type bac matches 15..25 run scoreboard players set @s gcd 50
execute if score type bac matches 15..25 run scoreboard players set @s chant 30
execute if score type bac matches 26 run scoreboard players set @s maxchant 160
execute if score type bac matches 26 run scoreboard players set @s chant 160
