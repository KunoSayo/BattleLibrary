playsound minecraft:block.amethyst_cluster.break player @a ~ ~ ~ 1000 2
playsound minecraft:block.note_block.xylophone player @a ~ ~ ~ 1000 0


scoreboard players set n bas 88
execute if predicate battle:r1d2 run scoreboard players add n bas 1
execute if predicate battle:r1d2 run scoreboard players add n bas 2
execute if predicate battle:r1d2 run scoreboard players add n bas 4
execute if predicate battle:r1d2 run scoreboard players add n bas 8
execute if predicate battle:r1d2 run scoreboard players add n bas 16
execute if predicate battle:r1d10 run scoreboard players add n bas 50
scoreboard players set ch bas 0
execute if score n bas matches 138.. run scoreboard players set ch bas 1
execute as @e[tag=boss] at @s run function ff14:showdmg
scoreboard players operation bosshp bau -= n bas
scoreboard players operation @s dmgstats += n bas
scoreboard players add @s dcstats 1