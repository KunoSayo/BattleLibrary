execute as @a[tag=ffcbattle, scores={hair=1}] at @e[tag=limit,scores={hair=1}, limit=1] run tp @s ~ ~ ~
execute as @a[tag=ffcbattle, scores={hair=2}] at @e[tag=limit,scores={hair=2}, limit=1] run tp @s ~ ~ ~
execute as @a[tag=ffcbattle, scores={hair=3}] at @e[tag=limit,scores={hair=3}, limit=1] run tp @s ~ ~ ~
execute as @a[tag=ffcbattle, scores={hair=4}] at @e[tag=limit,scores={hair=4}, limit=1] run tp @s ~ ~ ~

effect give @a[tag=ffcbattle] minecraft:wither 14 0

scoreboard players set @e[tag=lw] timeToLive 321
scoreboard players set @e[tag=limit] timeToLive 321