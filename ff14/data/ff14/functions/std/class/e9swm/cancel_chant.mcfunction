scoreboard players operation @s bac = @s chant
scoreboard players operation @s bac *= 10 consts
scoreboard players operation @s bac /= @s maxchant

title @s[tag=atk, scores={bac=10}] actionbar [{"text":"中断 \u00a76\u00a7m波动炮\u00a77\u00a7m 发动中 ----------\u00a7r | "}, {"score":{"name":"*", "objective":"chant"}}]
title @s[tag=atk, scores={bac=9}] actionbar [{"text":"中断 \u00a76\u00a7m波动炮\u00a77\u00a7m 发动中 #---------\u00a7r | "}, {"score":{"name":"*", "objective":"chant"}}]
title @s[tag=atk, scores={bac=8}] actionbar [{"text":"中断 \u00a76\u00a7m波动炮\u00a77\u00a7m 发动中 ##--------\u00a7r | "}, {"score":{"name":"*", "objective":"chant"}}]
title @s[tag=atk, scores={bac=7}] actionbar [{"text":"中断 \u00a76\u00a7m波动炮\u00a77\u00a7m 发动中 ###-------\u00a7r | "}, {"score":{"name":"*", "objective":"chant"}}]
title @s[tag=atk, scores={bac=6}] actionbar [{"text":"中断 \u00a76\u00a7m波动炮\u00a77\u00a7m 发动中 ####------\u00a7r | "}, {"score":{"name":"*", "objective":"chant"}}]
title @s[tag=atk, scores={bac=5}] actionbar [{"text":"中断 \u00a76\u00a7m波动炮\u00a77\u00a7m 发动中 #####-----\u00a7r | "}, {"score":{"name":"*", "objective":"chant"}}]
title @s[tag=atk, scores={bac=4}] actionbar [{"text":"中断 \u00a76\u00a7m波动炮\u00a77\u00a7m 发动中 ######----\u00a7r | "}, {"score":{"name":"*", "objective":"chant"}}]
title @s[tag=atk, scores={bac=3}] actionbar [{"text":"中断 \u00a76\u00a7m波动炮\u00a77\u00a7m 发动中 #######---\u00a7r | "}, {"score":{"name":"*", "objective":"chant"}}]
title @s[tag=atk, scores={bac=2}] actionbar [{"text":"中断 \u00a76\u00a7m波动炮\u00a77\u00a7m 发动中 ########--\u00a7r | "}, {"score":{"name":"*", "objective":"chant"}}]
title @s[tag=atk, scores={bac=1}] actionbar [{"text":"中断 \u00a76\u00a7m波动炮\u00a77\u00a7m 发动中 #########-\u00a7r | "}, {"score":{"name":"*", "objective":"chant"}}]
title @s[tag=atk, scores={bac=0}] actionbar [{"text":"中断 \u00a76\u00a7m波动炮\u00a77\u00a7m 发动中 #########+\u00a7r | "}, {"score":{"name":"*", "objective":"chant"}}]
title @s[tag=atk, scores={chant=0}] actionbar [{"text":"中断 \u00a76\u00a7m波动炮\u00a77\u00a7m 发动中 ########## \u00a7r | "}, {"score":{"name":"*", "objective":"chant"}}]
execute if entity @s[tag=atk] unless entity @e[tag=boss,distance=..25] run title @s title ""

title @s[tag=heal, scores={bac=10}] actionbar [{"text":"中断 \u00a7b\u00a7m救疗\u00a77\u00a7m 发动中 ----------\u00a7r | "}, {"score":{"name":"*", "objective":"chant"}}]
title @s[tag=heal, scores={bac=9}] actionbar [{"text":"中断 \u00a7b\u00a7m救疗\u00a77\u00a7m 发动中 #---------\u00a7r | "}, {"score":{"name":"*", "objective":"chant"}}]
title @s[tag=heal, scores={bac=8}] actionbar [{"text":"中断 \u00a7b\u00a7m救疗\u00a77\u00a7m 发动中 ##--------\u00a7r | "}, {"score":{"name":"*", "objective":"chant"}}]
title @s[tag=heal, scores={bac=7}] actionbar [{"text":"中断 \u00a7b\u00a7m救疗\u00a77\u00a7m 发动中 ###-------\u00a7r | "}, {"score":{"name":"*", "objective":"chant"}}]
title @s[tag=heal, scores={bac=6}] actionbar [{"text":"中断 \u00a7b\u00a7m救疗\u00a77\u00a7m 发动中 ####------\u00a7r | "}, {"score":{"name":"*", "objective":"chant"}}]
title @s[tag=heal, scores={bac=5}] actionbar [{"text":"中断 \u00a7b\u00a7m救疗\u00a77\u00a7m 发动中 #####-----\u00a7r | "}, {"score":{"name":"*", "objective":"chant"}}]
title @s[tag=heal, scores={bac=4}] actionbar [{"text":"中断 \u00a7b\u00a7m救疗\u00a77\u00a7m 发动中 ######----\u00a7r | "}, {"score":{"name":"*", "objective":"chant"}}]
title @s[tag=heal, scores={bac=3}] actionbar [{"text":"中断 \u00a7b\u00a7m救疗\u00a77\u00a7m 发动中 #######---\u00a7r | "}, {"score":{"name":"*", "objective":"chant"}}]
title @s[tag=heal, scores={bac=2}] actionbar [{"text":"中断 \u00a7b\u00a7m救疗\u00a77\u00a7m 发动中 ########--\u00a7r | "}, {"score":{"name":"*", "objective":"chant"}}]
title @s[tag=heal, scores={bac=1}] actionbar [{"text":"中断 \u00a7b\u00a7m救疗\u00a77\u00a7m 发动中 #########-\u00a7r | "}, {"score":{"name":"*", "objective":"chant"}}]
title @s[tag=heal, scores={bac=0}] actionbar [{"text":"中断 \u00a7b\u00a7m救疗\u00a77\u00a7m 发动中 #########+\u00a7r | "}, {"score":{"name":"*", "objective":"chant"}}]
title @s[tag=heal, scores={chant=0}] actionbar [{"text":"中断 \u00a7b\u00a7m救疗\u00a77\u00a7m 发动中 ##########\u00a7r | "}, {"score":{"name":"*", "objective":"chant"}}]

title @s[tag=respawn, scores={bac=10}] actionbar [{"text":"中断 \u00a76\u00a7m复活\u00a77\u00a7m 发动中 ----------\u00a7r | "}, {"score":{"name":"*", "objective":"chant"}}]
title @s[tag=respawn, scores={bac=9}] actionbar [{"text":"中断 \u00a76\u00a7m复活\u00a77\u00a7m 发动中 #---------\u00a7r | "}, {"score":{"name":"*", "objective":"chant"}}]
title @s[tag=respawn, scores={bac=8}] actionbar [{"text":"中断 \u00a76\u00a7m复活\u00a77\u00a7m 发动中 ##--------\u00a7r | "}, {"score":{"name":"*", "objective":"chant"}}]
title @s[tag=respawn, scores={bac=7}] actionbar [{"text":"中断 \u00a76\u00a7m复活\u00a77\u00a7m 发动中 ###-------\u00a7r | "}, {"score":{"name":"*", "objective":"chant"}}]
title @s[tag=respawn, scores={bac=6}] actionbar [{"text":"中断 \u00a76\u00a7m复活\u00a77\u00a7m 发动中 ####------\u00a7r | "}, {"score":{"name":"*", "objective":"chant"}}]
title @s[tag=respawn, scores={bac=5}] actionbar [{"text":"中断 \u00a76\u00a7m复活\u00a77\u00a7m 发动中 #####-----\u00a7r | "}, {"score":{"name":"*", "objective":"chant"}}]
title @s[tag=respawn, scores={bac=4}] actionbar [{"text":"中断 \u00a76\u00a7m复活\u00a77\u00a7m 发动中 ######----\u00a7r | "}, {"score":{"name":"*", "objective":"chant"}}]
title @s[tag=respawn, scores={bac=3}] actionbar [{"text":"中断 \u00a76\u00a7m复活\u00a77\u00a7m 发动中 #######---\u00a7r | "}, {"score":{"name":"*", "objective":"chant"}}]
title @s[tag=respawn, scores={bac=2}] actionbar [{"text":"中断 \u00a76\u00a7m复活\u00a77\u00a7m 发动中 ########--\u00a7r | "}, {"score":{"name":"*", "objective":"chant"}}]
title @s[tag=respawn, scores={bac=1}] actionbar [{"text":"中断 \u00a76\u00a7m复活\u00a77\u00a7m 发动中 #########-\u00a7r | "}, {"score":{"name":"*", "objective":"chant"}}]
title @s[tag=respawn, scores={bac=0}] actionbar [{"text":"中断 \u00a76\u00a7m复活\u00a77\u00a7m 发动中 #########+\u00a7r | "}, {"score":{"name":"*", "objective":"chant"}}]
title @s[tag=respawn, scores={chant=0}] actionbar [{"text":"中断 \u00a76\u00a7m复活\u00a77\u00a7m 发动中 ##########\u00a7r | "}, {"score":{"name":"*", "objective":"chant"}}]
execute if entity @s[tag=respawn] run say 中断了复活的咏唱




scoreboard players reset @s bac
scoreboard players reset @s chant
scoreboard players reset @s gcd
tag @s remove atk
tag @s remove heal
tag @s remove respawn
