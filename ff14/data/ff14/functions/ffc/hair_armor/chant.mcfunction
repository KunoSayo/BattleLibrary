scoreboard players set bosschantmax bau 100

tellraw @a {"text":"\u00a7e巴尔巴莉希娅正在发动“咒发武装”。"}
bossbar set minecraft:bosschant name {"text":"\u00a7e咒发武装"}
function ff14:ffc/chant_phase

# 咏唱结束6s后开始击退身边人+伤害
# 9s接aoe   = 9 + 6 = 15

schedule function ff14:ffc/hair_armor/cast 5s append
schedule function ff14:ffc/hair_armor/driveoff 11s append
schedule function ff14:ffc/hair_armor/driveoff 12s append
schedule function ff14:ffc/hair_armor/driveoff 13s append
schedule function ff14:ffc/hair_armor/driveoff 14s append
schedule function ff14:ffc/hair_armor/aoe 15s append

summon minecraft:area_effect_cloud 0 65 0 {WaitTime:160,Duration:140,Radius:3.5f,Particle:"minecraft:dust 0.125 0.25 0.125 1.0"}