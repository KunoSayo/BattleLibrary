function ff14:ffc/step_r
scoreboard players set bosschantmax bau 100
scoreboard players set forward bas 56

summon minecraft:armor_stand 14 65 0 {NoGravity:1b, Marker:1b, Tags:[bossas, ffcas, thornloc, thorn, eac], Invisible:1b}
summon minecraft:armor_stand -14 65 0 {NoGravity:1b, Marker:1b, Tags:[bossas, ffcas, thornloc, thorn, eac], Invisible:1b}
summon minecraft:armor_stand 0 65 14 {NoGravity:1b, Marker:1b, Tags:[bossas, ffcas, thornloc, thorn, eac], Invisible:1b}
summon minecraft:armor_stand 0 65 -14 {NoGravity:1b, Marker:1b, Tags:[bossas, ffcas, thornloc, thorn, eac], Invisible:1b}
kill @e[sort=random,limit=3,tag=thorn,type=minecraft:armor_stand]

execute as @e[tag=thorn] at @s facing 0 65 0 rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute as @e[tag=thorn] at @s positioned ~ ~2 ~ run function battle:forward
tellraw @a {"text":"\u00a7e巴尔巴莉希娅正在发动“野蛮刺”。"}
bossbar set minecraft:bosschant name {"text":"\u00a7e野蛮刺"}
function ff14:ffc/chant_phase
execute as @e[tag=boss] at @s facing entity @e[tag=thorn,limit=1] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~

execute if score bsisLine bau matches 1 run data merge entity @e[limit=1,tag=boss, type=minecraft:armor_stand] {Pose:{RightArm:[-10.0f, 180.0f, 180.0f]}}
execute if score bsisLine bau matches 1 as @e[tag=boss] at @s run tp @s ~ ~ ~ ~90 ~
execute unless score bsisLine bau matches 1 run data merge entity @e[limit=1,tag=boss, type=minecraft:armor_stand] {Pose:{RightArm:[-10.0f, 0.0f, 90.0f]}}

