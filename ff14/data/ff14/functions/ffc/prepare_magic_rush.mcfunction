tellraw @a {"text":"\u00a7e巴尔巴莉希娅正在发动“咒发突袭”。"}
bossbar set minecraft:bosschant name {"text":"\u00a7e咒发突袭"}
function ff14:ffc/chant_phase

execute as @e[tag=boss] at @s facing entity @e[tag=thorn,limit=1] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~

execute if score bsisR bau matches 1 run data merge entity @s {Pose:{RightArm:[-15.0f, 0.0f, 10.0f], Head:[30.0f, 0.0f, 0.0f], LeftLeg:[30.0f, 0.0f, -10.0f], RightLeg:[-30.0f, 0.0f, 10.0f]}}
execute unless score bsisR bau matches 1 run tp @s ~ 66 ~