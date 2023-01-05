scoreboard players set cc bas 1
function battle:displayn
tag @e[tag=displayn, sort=nearest, limit=1] add newshowdmg
execute if predicate battle:r1d2 run execute as @e[tag=newshowdmg] at @s run tp ~0.5 ~ ~
execute if predicate battle:r1d2 run execute as @e[tag=newshowdmg] at @s run tp ~-0.5 ~ ~
execute if predicate battle:r1d2 run execute as @e[tag=newshowdmg] at @s run tp ~ ~ ~0.5
execute if predicate battle:r1d2 run execute as @e[tag=newshowdmg] at @s run tp ~ ~ ~-0.5
scoreboard players set @e[tag=newshowdmg] timeToLive 100
tag @e[tag=newshowdmg] add showDmgAs

tag @e remove newshowdmg