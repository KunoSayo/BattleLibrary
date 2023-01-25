scoreboard players operation mod bac = @s timeToLive
scoreboard players operation mod bac %= 20 consts
scoreboard players set cc bau 1
scoreboard players reset aoedmg

execute if score mod bac matches 19 if entity @s[tag=aoe5] run function ff14:aoe/5
execute if score mod bac matches 19 if entity @s[tag=aoe3.5] run function ff14:aoe/3.5
execute if score mod bac matches 9 if entity @s[tag=aoe7.5] run function ff14:aoe/7.5
execute if score mod bac matches 19 if entity @s[tag=aoe7.5] run function ff14:aoe/7.5
execute if score mod bac matches 19 if entity @s[tag=line_1_30] run function battle:line/1/30

execute if entity @s[tag=move1] run tp @s ^ ^ ^0.05
execute if entity @s[tag=waoe] positioned ~ 65 ~ if entity @a[tag=ffcbattle,distance=..1] run scoreboard players add @a[tag=ffcbattle,distance=..1] dmg 2
execute if entity @s[tag=waoe] positioned ~ 65 ~ if entity @a[tag=ffcbattle,distance=..1] run kill @s

scoreboard players set cc bau 2

execute if score @s timeToLive matches 0 if entity @s[tag=aoe5] run function ff14:aoe/5
execute if score @s timeToLive matches 0 if entity @s[tag=aoe5] run scoreboard players add @a[distance=..5] dmg 2

execute if score @s timeToLive matches 0 if entity @s[tag=aoe7.5] run function ff14:aoe/7.5
execute if score @s timeToLive matches 0 if entity @s[tag=aoe7.5] run scoreboard players add @a[distance=..7.5] dmg 2



execute if score @s timeToLive matches 0 if entity @s[tag=aoe3.5] run function ff14:aoe/3.5
execute if score @s timeToLive matches 0 if entity @s[tag=aoe3.5] run scoreboard players add @a[distance=..3.5] dmg 2

scoreboard players set aoedmg bau 2
scoreboard players set cc bau 6
execute if score @s timeToLive matches 0 if entity @s[tag=line_1_30] run function battle:line/1/30

scoreboard players reset aoedmg

function battle:calc_cache