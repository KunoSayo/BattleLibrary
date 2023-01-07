scoreboard players remove @s bac 1
execute at @s facing entity @e[limit=1, sort=nearest, tag=fas, type=armor_stand] eyes rotated ~ 0 if block ^ ^ ^-0.25 #battle:path positioned ^ ^ ^-0.25 run tp @s ~ ~ ~
execute positioned as @s run particle minecraft:cloud ~ ~ ~
execute if score @s bac matches 1.. run function battle:_driveoff