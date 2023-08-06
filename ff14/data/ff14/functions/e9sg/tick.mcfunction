execute as @e[tag=e9sfloor] at @s run function ff14:e9sg/floor

execute store result score left bac run execute if entity @e[tag=gaming]

execute as @e[tag=steel] at @s run function ff14:e9sg/steel

execute if score @s liveticks matches 20.. if score left bac matches ..1 run title @a subtitle ""
execute if score @s liveticks matches 20.. if score left bac matches ..0 run title @a title {"text":"\u00a74\u00a7k6\u00a7r\u00a74无人生还\u00a7k6"}
execute if score @s liveticks matches 20.. if score left bac matches 1 run title @a title {"text":"游戏结束"}
execute if score @s liveticks matches 20.. if score left bac matches ..1 run function ff14:e9sg/finish

# 30s
execute if score @s liveticks matches 600 run tag @e[limit=1, sort=random, tag=e9sfloor] add disappear

# 45s
execute if score @s liveticks matches 900 run tag @e[limit=2, sort=random, tag=e9sfloor] add disappear

# 60s steel
execute if score @s liveticks matches 1200 run summon minecraft:armor_stand 0.0 60.6 0.0 {Marker:1b, Invisible:1b, Tags:[steel, e9sas]}

# 75s
execute if score @s liveticks matches 1500 run tag @e[limit=3, sort=random, tag=e9sfloor] add disappear

# 90s
execute if score @s liveticks matches 1800 run tag @e[limit=4, sort=random, tag=e9sfloor] add disappear

# 105s
execute if score @s liveticks matches 2100 run tag @e[limit=5, sort=random, tag=e9sfloor] add disappear

# 120s
execute if score @s liveticks matches 2400 run tag @e[limit=10, sort=random, tag=e9sfloor] add disappear

# > 135s
execute if score @s liveticks matches 2700.. if score m20 time matches 0 run tag @e[limit=1, sort=random, tag=e9sfloor, tag=!disappear] add disappear