tellraw @a {"text":"\u00a7e巴尔巴莉希娅发动了“警戒狂风”。"}
scoreboard players set aoedmg bau 2
scoreboard players set cc bau 6
execute as @e[tag=enemy] at @s run function ff14:ffc/warn_wind/as_cast
execute as @e[tag=enemy] at @s run tp ^ ^ ^10

scoreboard players set @e[tag=enemy] timeToLive 3
