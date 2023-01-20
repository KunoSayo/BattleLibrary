scoreboard players set aoedmg bau 2
scoreboard players set cc bau 6
execute if score bsisR bau matches 1 at @s facing 0 65 0 run function ff14:tri/67.5
execute if score bsisR bau matches 1 run playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 1000 1
scoreboard players reset aoedmg

execute unless score bsisR bau matches 1 run function ff14:ffc/moon
execute unless score bsisR bau matches 1 run scoreboard players add @a[tag=ffcbattle, distance=3.5..] dmg 2
