execute store result score type bac run data get entity @s Inventory[-1].id
execute store result score slot bac run data get entity @s Inventory[-1].Slot

execute unless score @s gcd matches 0.. unless score @s chant matches 0.. if score slot bac matches -106 at @s run function ff14:check_chant
execute unless score @s chant matches 0.. if score slot bac matches -106 run function ff14:check_ab
execute if entity @s[tag=clearoffitem] run item replace entity @s weapon.offhand with air
tag @s remove clearoffitem