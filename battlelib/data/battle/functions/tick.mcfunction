tag @e remove battleLibTagKill
tag @e[scores={timeToLive=0}] add battleLibTagKill
scoreboard players reset @e[tag=battleLibTagKill] timeToLive
kill @e[tag=battleLibTagKill]
scoreboard players operation @e[scores={timeToLive=1..}] timeToLive -= 1 consts