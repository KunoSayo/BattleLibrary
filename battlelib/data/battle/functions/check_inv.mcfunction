execute store result score type bac run data get entity @s Inventory[-1].id
execute store result score slot bac run data get entity @s Inventory[-1].Slot

execute if score slot bac matches -106 run function ff14:check_cast
execute if score slot bac matches -106 run item replace entity @s weapon.offhand with air