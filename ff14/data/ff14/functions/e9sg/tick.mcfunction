execute as @e[tag=e9sfloor] at @s run function ff14:e9sg/floor

execute store result score left bac run execute if entity @a[tag=gaming]


execute if score @s liveticks matches 20.. if score left bac matches ..1 run title @a subtitle ""
execute if score @s liveticks matches 20.. if score left bac matches ..0 run title @a title {"text":"\u00a74\u00a7k6\u00a7r\u00a74无人生还\u00a7k6"}
execute if score @s liveticks matches 20.. if score left bac matches 1 run title @a title {"text":"游戏结束"}
execute if score @s liveticks matches 20.. if score left bac matches ..1 run function ff14:e9sg/finish