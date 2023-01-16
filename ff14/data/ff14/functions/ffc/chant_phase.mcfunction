data merge entity @e[limit=1,tag=boss, type=minecraft:armor_stand] {Pose:{RightArm:[-90.0f, 0.0f, 10.0f]}}
bossbar set minecraft:bosschant value 0
scoreboard players set bosschant bau 0
execute store result bossbar minecraft:bosschant max run scoreboard players get bosschantmax bau

bossbar set minecraft:bosschant visible true
bossbar set minecraft:bosschant players @a
