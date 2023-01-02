tag @r[scores={Left=0}] add DoNotAssign

execute if entity @s[tag=DONOTDROP] run tag @a[tag=DoNotAssign] add DONOTDROP
execute if entity @s[tag=DONOTFALL] run tag @a[tag=DoNotAssign] add DONOTFALL
execute if entity @s[tag=DONOTGODEEP] run tag @a[tag=DoNotAssign] add DONOTGODEEP
execute if entity @s[tag=DONOTGONETHER] run tag @a[tag=DoNotAssign] add DONOTGONETHER
execute if entity @s[tag=DONOTJUMP] run tag @a[tag=DoNotAssign] add DONOTJUMP
execute if entity @s[tag=DONOTSHIFT] run tag @a[tag=DoNotAssign] add DONOTSHIFT
execute if entity @s[tag=DONOTRIDE] run tag @a[tag=DoNotAssign] add DONOTRIDE
execute if entity @s[tag=DONOTGOHIGH] run tag @a[tag=DoNotAssign] add DONOTGOHIGH
execute if entity @s[tag=DONOTINTERACTFURNACE] run tag @a[tag=DoNotAssign] add DONOTINTERACTFURNACE
execute if entity @s[tag=DONOTINTERACTANVIL] run tag @a[tag=DoNotAssign] add DONOTINTERACTANVIL
execute if entity @s[tag=DONOTINTERACTCAMPFIRE] run tag @a[tag=DoNotAssign] add DONOTINTERACTCAMPFIRE
execute if entity @s[tag=DONOTSWIM] run tag @a[tag=DoNotAssign] add DONOTSWIM
execute if entity @s[tag=DONOTTHROWSNOWBALL] run tag @a[tag=DoNotAssign] add DONOTTHROWSNOWBALL
execute if entity @s[tag=DONOTTHROWEGG] run tag @a[tag=DoNotAssign] add DONOTTHROWEGG
execute if entity @s[tag=DONOTWALKICE] run tag @a[tag=DoNotAssign] add DONOTWALKICE
kill @s
scoreboard players add @a[tag=DoNotAssign] Left 1
tag @a remove DoNotAssign

execute if entity @a[scores={Left=0}] as @e[sort=random,limit=1,type=minecraft:armor_stand,tag=DONOTAS] run function donotdo:assign