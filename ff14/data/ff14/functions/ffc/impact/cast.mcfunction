tp @s 0 65 0
tellraw @a {"text":"\u00a7e巴尔巴莉希娅发动了“冲击”。"}

scoreboard players set driveoff bas 14
tag @a remove driveoff
tag @a[tag=ffcbattle] add driveoff
execute positioned 0 65 0 run function battle:driveoff


execute as @a[tag=driveoff, scores={chant=11..}] run function ff14:cancel_chant

execute positioned 0 65 0 run scoreboard players add @a[tag=ffcbattle, distance=..3] dmg 4

execute positioned 0 65 0 run particle minecraft:block grass 0 66 0 1 0.25 1 1 5000 force

tag @a remove driveoff