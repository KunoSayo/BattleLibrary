
tag @s add clearoffitem

execute if score type bac matches 21 run tag @s add atk
execute if score type bac matches 20 run tag @s add heal
execute if score type bac matches 26 run tag @s add respawn

execute if score type bac matches 20..25 run scoreboard players set @s maxchant 30
execute if score type bac matches 20..25 run scoreboard players set @s chant 30
execute if score type bac matches 26 run scoreboard players set @s maxchant 160
execute if score type bac matches 26 run scoreboard players set @s chant 160

execute if score type bac matches 19 unless entity @e[tag=boss,distance=..25] run title @s subtitle {"text":"目标在射程之外。","color":"red", "bold":"true"}
execute if score type bac matches 19 unless entity @e[tag=boss,distance=..25] run title @s title ""
execute if score type bac matches 19 unless entity @e[tag=boss,distance=..25] run scoreboard players set type bac 0

execute if score type bac matches 19..26 run scoreboard players set @s gcd 50
execute if score type bac matches 19 if entity @e[tag=boss,distance=..25] run function ff14:dd