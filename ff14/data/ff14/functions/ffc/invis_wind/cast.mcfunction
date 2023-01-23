tellraw @a {"text":"\u00a7e巴尔巴莉希娅正在发动了“隐秘之风”。"}

scoreboard players set cc bau 6
scoreboard players set aoedmg bau 2
execute positioned 0 65 0 facing ~1 ~ ~ run function ff14:tri/15.0/15
execute positioned 0 65 0 facing ~-1 ~ ~ run function ff14:tri/15.0/15
execute positioned 0 65 0 facing ~ ~ ~1 run function ff14:tri/15.0/15
execute positioned 0 65 0 facing ~ ~ ~-1 run function ff14:tri/15.0/15
