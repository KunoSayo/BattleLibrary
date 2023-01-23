scoreboard players operation mod bac = @s timeToLive
scoreboard players operation mod bac %= 20 consts
scoreboard players set cc bau 1
execute if score mod bac matches 19 if entity @s[tag=aoe5] run function ff14:aoe/5
execute if score mod bac matches 19 if entity @s[tag=aoe3.5] run function ff14:aoe/3.5

scoreboard players set cc bau 2
execute if score @s timeToLive matches 0 if entity @s[tag=aoe5] run function ff14:aoe/5
execute if score @s timeToLive matches 0 if entity @s[tag=aoe5] run scoreboard players add @a[distance=..5] dmg 2


execute if score @s timeToLive matches 0 if entity @s[tag=aoe3.5] run function ff14:aoe/3.5
execute if score @s timeToLive matches 0 if entity @s[tag=aoe3.5] run scoreboard players add @a[distance=..3.5] dmg 2
