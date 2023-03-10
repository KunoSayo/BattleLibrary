scoreboard players operation @s bac = @s chant
scoreboard players operation @s bac *= 10 consts
scoreboard players operation @s bac /= @s maxchant

title @s[tag=atk, scores={bac=10}] actionbar [{"text":"\u00a76闪灼 \u00a77 发动中 ---------- \u00a7r| "}, {"score":{"name":"*", "objective":"chant"}}]
title @s[tag=atk, scores={bac=9}] actionbar [{"text":"\u00a76闪灼 \u00a77 发动中 #--------- \u00a7r| "}, {"score":{"name":"*", "objective":"chant"}}]
title @s[tag=atk, scores={bac=8}] actionbar [{"text":"\u00a76闪灼 \u00a77 发动中 ##-------- \u00a7r| "}, {"score":{"name":"*", "objective":"chant"}}]
title @s[tag=atk, scores={bac=7}] actionbar [{"text":"\u00a76闪灼 \u00a77 发动中 ###------- \u00a7r| "}, {"score":{"name":"*", "objective":"chant"}}]
title @s[tag=atk, scores={bac=6}] actionbar [{"text":"\u00a76闪灼 \u00a77 发动中 ####------ \u00a7r| "}, {"score":{"name":"*", "objective":"chant"}}]
title @s[tag=atk, scores={bac=5}] actionbar [{"text":"\u00a76闪灼 \u00a77 发动中 #####----- \u00a7r| "}, {"score":{"name":"*", "objective":"chant"}}]
title @s[tag=atk, scores={bac=4}] actionbar [{"text":"\u00a76闪灼 \u00a77 发动中 ######---- \u00a7r| "}, {"score":{"name":"*", "objective":"chant"}}]
title @s[tag=atk, scores={bac=3}] actionbar [{"text":"\u00a76闪灼 \u00a77 发动中 #######--- \u00a7r| "}, {"score":{"name":"*", "objective":"chant"}}]
title @s[tag=atk, scores={bac=2}] actionbar [{"text":"\u00a76闪灼 \u00a77 发动中 ########-- \u00a7r| "}, {"score":{"name":"*", "objective":"chant"}}]
title @s[tag=atk, scores={bac=1}] actionbar [{"text":"\u00a76闪灼 \u00a77 发动中 #########- \u00a7r| "}, {"score":{"name":"*", "objective":"chant"}}]
title @s[tag=atk, scores={bac=0}] actionbar [{"text":"\u00a76闪灼 \u00a77 发动中 #########+ \u00a7r| "}, {"score":{"name":"*", "objective":"chant"}}]
title @s[tag=atk, scores={chant=0}] actionbar [{"text":"\u00a76闪灼 \u00a77 发动中 ########## \u00a7r| "}, {"score":{"name":"*", "objective":"chant"}}]
execute if entity @s[tag=atk, scores={chant=0}] run function ff14:atk
execute if entity @s[tag=atk] at @s unless entity @e[tag=boss,distance=..25] run function ff14:cancel_chant
tag @s[tag=atk, scores={chant=0}] remove atk

title @s[tag=heal, scores={bac=10}] actionbar [{"text":"\u00a7b蓝花 \u00a77 发动中 ---------- \u00a7r| "}, {"score":{"name":"*", "objective":"chant"}}]
title @s[tag=heal, scores={bac=9}] actionbar [{"text":"\u00a7b蓝花 \u00a77 发动中 #--------- \u00a7r| "}, {"score":{"name":"*", "objective":"chant"}}]
title @s[tag=heal, scores={bac=8}] actionbar [{"text":"\u00a7b蓝花 \u00a77 发动中 ##-------- \u00a7r| "}, {"score":{"name":"*", "objective":"chant"}}]
title @s[tag=heal, scores={bac=7}] actionbar [{"text":"\u00a7b蓝花 \u00a77 发动中 ###------- \u00a7r| "}, {"score":{"name":"*", "objective":"chant"}}]
title @s[tag=heal, scores={bac=6}] actionbar [{"text":"\u00a7b蓝花 \u00a77 发动中 ####------ \u00a7r| "}, {"score":{"name":"*", "objective":"chant"}}]
title @s[tag=heal, scores={bac=5}] actionbar [{"text":"\u00a7b蓝花 \u00a77 发动中 #####----- \u00a7r| "}, {"score":{"name":"*", "objective":"chant"}}]
title @s[tag=heal, scores={bac=4}] actionbar [{"text":"\u00a7b蓝花 \u00a77 发动中 ######---- \u00a7r| "}, {"score":{"name":"*", "objective":"chant"}}]
title @s[tag=heal, scores={bac=3}] actionbar [{"text":"\u00a7b蓝花 \u00a77 发动中 #######--- \u00a7r| "}, {"score":{"name":"*", "objective":"chant"}}]
title @s[tag=heal, scores={bac=2}] actionbar [{"text":"\u00a7b蓝花 \u00a77 发动中 ########-- \u00a7r| "}, {"score":{"name":"*", "objective":"chant"}}]
title @s[tag=heal, scores={bac=1}] actionbar [{"text":"\u00a7b蓝花 \u00a77 发动中 #########- \u00a7r| "}, {"score":{"name":"*", "objective":"chant"}}]
title @s[tag=heal, scores={bac=0}] actionbar [{"text":"\u00a7b蓝花 \u00a77 发动中 #########+ \u00a7r| "}, {"score":{"name":"*", "objective":"chant"}}]
title @s[tag=heal, scores={chant=0}] actionbar [{"text":"\u00a7b蓝花 \u00a77 发动中 ########## \u00a7r| "}, {"score":{"name":"*", "objective":"chant"}}]
execute if entity @s[tag=heal, scores={chant=0}] at @s run function ff14:heal
tag @s[tag=heal, scores={chant=0}] remove heal

title @s[tag=respawn, scores={bac=10}] actionbar [{"text":"\u00a76复活 \u00a77 发动中 ---------- \u00a7r| "}, {"score":{"name":"*", "objective":"chant"}}]
execute if entity @s[tag=respawn, scores={bac=10}] run say 正在读条复活
title @s[tag=respawn, scores={bac=9}] actionbar [{"text":"\u00a76复活 \u00a77 发动中 #--------- \u00a7r| "}, {"score":{"name":"*", "objective":"chant"}}]
title @s[tag=respawn, scores={bac=8}] actionbar [{"text":"\u00a76复活 \u00a77 发动中 ##-------- \u00a7r| "}, {"score":{"name":"*", "objective":"chant"}}]
title @s[tag=respawn, scores={bac=7}] actionbar [{"text":"\u00a76复活 \u00a77 发动中 ###------- \u00a7r| "}, {"score":{"name":"*", "objective":"chant"}}]
title @s[tag=respawn, scores={bac=6}] actionbar [{"text":"\u00a76复活 \u00a77 发动中 ####------ \u00a7r| "}, {"score":{"name":"*", "objective":"chant"}}]
title @s[tag=respawn, scores={bac=5}] actionbar [{"text":"\u00a76复活 \u00a77 发动中 #####----- \u00a7r| "}, {"score":{"name":"*", "objective":"chant"}}]
title @s[tag=respawn, scores={bac=4}] actionbar [{"text":"\u00a76复活 \u00a77 发动中 ######---- \u00a7r| "}, {"score":{"name":"*", "objective":"chant"}}]
title @s[tag=respawn, scores={bac=3}] actionbar [{"text":"\u00a76复活 \u00a77 发动中 #######--- \u00a7r| "}, {"score":{"name":"*", "objective":"chant"}}]
title @s[tag=respawn, scores={bac=2}] actionbar [{"text":"\u00a76复活 \u00a77 发动中 ########-- \u00a7r| "}, {"score":{"name":"*", "objective":"chant"}}]
title @s[tag=respawn, scores={bac=1}] actionbar [{"text":"\u00a76复活 \u00a77 发动中 #########- \u00a7r| "}, {"score":{"name":"*", "objective":"chant"}}]
title @s[tag=respawn, scores={bac=0}] actionbar [{"text":"\u00a76复活 \u00a77 发动中 #########+ \u00a7r| "}, {"score":{"name":"*", "objective":"chant"}}]
title @s[tag=respawn, scores={chant=0}] actionbar [{"text":"\u00a76复活 \u00a77 发动中 ########## \u00a7r| "}, {"score":{"name":"*", "objective":"chant"}}]
execute if entity @s[tag=respawn] unless entity @a[tag=!ffcbattle,gamemode=adventure] run function ff14:cancel_chant
execute if entity @s[tag=respawn, scores={chant=0}] run function ff14:respawn
tag @s[tag=respawn, scores={chant=0}] remove respawn



scoreboard players reset @s bac