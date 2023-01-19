scoreboard players set aoedmg bau 2
scoreboard players set cc bau 6
execute if score bsisLine bau matches 1 as @e[tag=boss] at @s positioned ^ ^ ^-15 run function battle:line/3.5/30
scoreboard players set cc bau 2
execute unless score bsisLine bau matches 1 run function ff14:ffc/moon
execute unless score bsisLine bau matches 1 run scoreboard players add @a[tag=ffcbattle, distance=3.5..] dmg 2
function ff14:ffc/normal_phase