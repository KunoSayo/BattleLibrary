setblock 1 8 1 grass_block
execute unless score cc bas matches 1..4 run setblock 1 9 1 minecraft:acacia_sign{Text1:'{"score":{"name":"n", "objective":"bas"}}'} destroy
execute if score cc bas matches 1 run setblock 1 9 1 minecraft:acacia_sign{Text1:'{"score":{"name":"n", "objective":"bas"}, "color":"red"}'} destroy
execute if score cc bas matches 2 run setblock 1 9 1 minecraft:acacia_sign{Text1:'{"score":{"name":"n", "objective":"bas"}, "color":"green"}'} destroy
execute if score cc bas matches 3 run setblock 1 9 1 minecraft:acacia_sign{Text1:'{"score":{"name":"n", "objective":"bas"}, "color":"blue"}'} destroy
execute if score cc bas matches 4 run setblock 1 9 1 minecraft:acacia_sign{Text1:'{"score":{"name":"n", "objective":"bas"}, "color":"yellow"}'} destroy
summon minecraft:armor_stand ~ ~ ~ {CustomName:"{\"score\":{\"name\":\"1\", \"objective\":\"consts\"}}", CustomNameVisible:1b, Invisible: 1b, Tags:["displayn", "battleas"], NoGravity:1b}
data modify entity @e[type=minecraft:armor_stand,limit=1, sort=nearest, tag=displayn] CustomName set from block 1 9 1 Text1