scoreboard players remove forwardCount bac 2
execute if entity @e[tag=block,distance=..1] run scoreboard players set forwardCount bac 0
execute if score forwardCount bac matches 1.. positioned ^ ^ ^0.5 run function battle:_forward
execute unless score forwardCount bac matches 1.. if score fr bas matches 1 run summon minecraft:armor_stand ~ ~ ~ {Marker:1b, Tags:[forward_result], Invisible:1b}
function battleapi:forward_cb