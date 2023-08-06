

execute if score type bac matches 15 unless score @s ffccd matches 1.. positioned ~ 60.0 ~ run function ff14:std/class/e9swm/ffc
execute if score type bac matches 15 run tag @s add clearoffitem
execute if score type bac matches 15 run scoreboard players operation @s gcd > 10 consts
