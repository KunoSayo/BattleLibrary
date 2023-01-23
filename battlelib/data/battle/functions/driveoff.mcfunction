summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b, Invisible:1b, Tags:["self", "fas"]}

execute as @a[distance=..40, tag=driveoff] run scoreboard players operation @s bac = driveoff bas
execute as @a[distance=..40, tag=driveoff] positioned as @s rotated ~ 0 run function battle:_driveoff
scoreboard players reset @a[distance=..40] bac

kill @e[tag=fas, type=armor_stand]