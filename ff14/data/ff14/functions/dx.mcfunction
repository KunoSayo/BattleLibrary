scoreboard players set cc bau 5
execute as @a[tag=ffxing] unless entity @s[tag=ndx] at @s run function ff14:aoe/4.5
scoreboard players set cc bau 7
execute as @a[tag=ffxing] unless entity @s[tag=ndx] at @s run function battle:circle/5.0
execute as @a[tag=ffxing] unless entity @s[tag=ndx] at @s run playsound minecraft:block.bell.use master @a ~ ~ ~ 100 1