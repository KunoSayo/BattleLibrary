execute if score bosstime time matches 1 run tellraw @a {"text":"\u00a7a巴尔巴莉希娅：何等美味的以太……"}

execute if score bosstime time matches 100 run tellraw @a {"text":"\u00a7a巴尔巴莉希娅：会令我的头发更加艳丽！"}

execute if score bosstime time matches 200 run tellraw @a {"text":"\u00a7e巴尔巴莉希娅正在咏唱“虚空飙风”。"}
execute if score bosstime time matches 200 run bossbar set minecraft:bosschant name {"text":"\u00a7e虚空飙风"}
execute if score bosstime time matches 200 run function ff14:ffc/chant_phase

execute if score bosstime time matches 300 run function ff14:ffc/void_wind
# 15s


# 23s
execute if score bosstime time matches 460 run function ff14:ffc/angry_wind


execute if score bosstime time matches 499 run tellraw @a {"text":"\u00a7a巴尔巴莉希娅：你能看穿这招吗？"}
execute if score bosstime time matches 500 run tellraw @a {"text":"\u00a7e巴尔巴莉希娅正在发动“野蛮刺”。"}
execute if score bosstime time matches 500 run bossbar set minecraft:bosschant name {"text":"\u00a7e野蛮刺"}
execute if score bosstime time matches 500 run function ff14:ffc/chant_phase
# todo: effect tips

# video 1:22 = 30s boss time

execute if score bosstime time matches 600 run tellraw @a {"text":"\u00a7e巴尔巴莉希娅发动了“野蛮刺”。"}
execute if score bosstime time matches 600 run function ff14:ffc/normal_phase

# todo: 32s action aoe calc (2) (640tick)
# todo: 34s circle aoe calc (2) (680tick)
execute if score bosstime time matches 720 run tellraw @a {"text":"\u00a7e巴尔巴莉希娅发动了“咒发操控”。"}
execute if score bosstime time matches 760 run tellraw @a {"text":"\u00a7e巴尔巴莉希娅正在发动“咒发突袭”。"}
execute if score bosstime time matches 760 run bossbar set minecraft:bosschant name {"text":"\u00a7e咒发突袭"}
execute if score bosstime time matches 760 run function ff14:ffc/chant_phase
# todo: random x or t

# progress here.

execute if score bosstime time matches 920 run tellraw @a {"text":"\u00a7e巴尔巴莉希娅发动了“咒发突袭”。"}
execute if score bosstime time matches 920 run function ff14:ffc/normal_phase
# todo: random aoe calc (2)