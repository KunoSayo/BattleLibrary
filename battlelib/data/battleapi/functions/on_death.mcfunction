# Event for player death

scoreboard players reset @s dmg
scoreboard players reset @s dmgcd
execute store result score output bac run data get entity @s Pos[1]
execute if score @s Health matches 1.. if score output bac matches 70.. run scoreboard players reset @s Death
scoreboard players reset @s chant
tp @s ~ 71 ~
execute store result score @s Health run data get entity @s Health
tag @s remove ffcbattle
clear @s