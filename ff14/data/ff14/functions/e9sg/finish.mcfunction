tellraw @a [{"text":"游戏结束。存活下来的人："}, {"selector":"@e[tag=gaming]"}]

execute as @a positioned 0 60 66 run tp @s ~ ~ ~
gamemode adventure @a

function ff14:e9sg/clean
execute as @a run function ff14:e9sg/report_score