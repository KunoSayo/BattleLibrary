scoreboard objectives add DoNotTemp dummy
scoreboard objectives add Left dummy
scoreboard players set @a Left 0
scoreboard objectives add broadcast trigger

tag @a remove DONOTDROP
tag @a remove DONOTFALL
tag @a remove DONOTGODEEP
tag @a remove DONOTGONETHER
tag @a remove DONOTJUMP
tag @a remove DONOTSHIFT
tag @a remove DONOTRIDE
tag @a remove DONOTGOHIGH
tag @a remove DONOTINTERACTFURNACE
tag @a remove DONOTINTERACTANVIL
tag @a remove DONOTINTERACTCAMPFIRE
tag @a remove DONOTSWIM
tag @a remove DONOTTHROWSNOWBALL
tag @a remove DONOTTHROWEGG
tag @a remove DONOTWALKICE


scoreboard objectives add drop minecraft.custom:minecraft.drop
scoreboard objectives add jump minecraft.custom:minecraft.jump
scoreboard objectives add sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add furnace minecraft.custom:minecraft.interact_with_furnace
scoreboard objectives add anvil minecraft.custom:minecraft.interact_with_anvil
scoreboard objectives add campfire minecraft.custom:minecraft.interact_with_campfire
scoreboard objectives add swim minecraft.custom:minecraft.swim_one_cm
scoreboard objectives add snowball minecraft.used:minecraft.snowball
scoreboard objectives add egg minecraft.used:minecraft.egg

execute at @r run function donotdo:summon

execute as @e[sort=random,limit=1,type=minecraft:armor_stand,tag=DONOTAS] run function donotdo:assign
kill @e[tag=DONOTAS]

tag @a add receiveBroadcast
execute as @a run function donotdo:broadcast
tag @a remove receiveBroadcast

scoreboard objectives setdisplay sidebar Left