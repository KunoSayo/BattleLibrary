scoreboard players set cc bau 3
function battle:circle/0.5
function battle:circle/1.5
function battle:circle/2.5
function battle:circle/3.5
function battle:circle/1.0
function battle:circle/2.0
function battle:circle/3.0
function battle:circle/4.0

tag @s add ffted

tag @a[distance=..4] add ting

scoreboard players add @a[tag=ting] dmgcache 4
execute as @a[tag=ting, tag=!ffted] run scoreboard players operation @a[tag=ting] dmgcache /= 2 consts
scoreboard players operation @a[tag=ting] dmgcache > 1 consts

playsound minecraft:block.note_block.flute master @a ~ ~ ~ 100 2

tag @a[tag=ting] add ffted
tag @a remove ting
function battle:calc_cache