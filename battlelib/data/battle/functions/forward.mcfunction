scoreboard players operation forwardCount bac = forward bas
tag @s add self
function battle:_forward
execute as @e[tag=forward_result] rotated ~ ~ at @s run tp @s ~ ~ ~ ~ ~
tag @s remove self