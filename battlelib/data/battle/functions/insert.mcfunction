execute at @r run function donotdo:summon
execute as @e[sort=random,limit=1,type=minecraft:armor_stand,tag=DONOTAS] run function donotdo:assign
kill @e[tag=DONOTAS]

tag @a add receiveBroadcast
execute as @a run function donotdo:broadcast
tag @a remove receiveBroadcast
