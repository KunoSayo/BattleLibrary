execute unless entity @e[tag=ffcbattle,tag=!rushed] run tag @a remove rushed
tag @r[tag=ffcbattle, tag=!rushed] add nowtarget

execute as @a[tag=nowtarget] at @s run function ff14:ffc/cruel_charge/rush_atk

tag @a[tag=nowtarget] add rushed
tag @a remove nowtarget