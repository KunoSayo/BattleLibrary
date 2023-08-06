
function ff14:e9sg/clean

summon minecraft:armor_stand 1 24 65 {Tags:["e9sgame"]}

execute positioned 0.0 60.5025 0.0 run summon minecraft:armor_stand ~0.0 ~0.0 ~0.0 {Marker:1b, Tags:[e9sfloor], Invisible:1b}
execute positioned 0.0 60.5025 -8.0 run summon minecraft:armor_stand ~0.0 ~0.0 ~0.0 {Marker:1b, Tags:[e9sfloor], Invisible:1b}
execute positioned 0.0 60.5025 -16.0 run summon minecraft:armor_stand ~0.0 ~0.0 ~0.0 {Marker:1b, Tags:[e9sfloor], Invisible:1b}
execute positioned 0.0 60.5025 8.0 run summon minecraft:armor_stand ~0.0 ~0.0 ~0.0 {Marker:1b, Tags:[e9sfloor], Invisible:1b}
execute positioned 0.0 60.5025 16.0 run summon minecraft:armor_stand ~0.0 ~0.0 ~0.0 {Marker:1b, Tags:[e9sfloor], Invisible:1b}

execute positioned 8.0 60.5025 0.0 run summon minecraft:armor_stand ~0.0 ~0.0 ~0.0 {Marker:1b, Tags:[e9sfloor], Invisible:1b}
execute positioned 8.0 60.5025 -8.0 run summon minecraft:armor_stand ~0.0 ~0.0 ~0.0 {Marker:1b, Tags:[e9sfloor], Invisible:1b}
execute positioned 8.0 60.5025 -16.0 run summon minecraft:armor_stand ~0.0 ~0.0 ~0.0 {Marker:1b, Tags:[e9sfloor], Invisible:1b}
execute positioned 8.0 60.5025 8.0 run summon minecraft:armor_stand ~0.0 ~0.0 ~0.0 {Marker:1b, Tags:[e9sfloor], Invisible:1b}
execute positioned 8.0 60.5025 16.0 run summon minecraft:armor_stand ~0.0 ~0.0 ~0.0 {Marker:1b, Tags:[e9sfloor], Invisible:1b}

execute positioned -8.0 60.5025 0.0 run summon minecraft:armor_stand ~0.0 ~0.0 ~0.0 {Marker:1b, Tags:[e9sfloor], Invisible:1b}
execute positioned -8.0 60.5025 -8.0 run summon minecraft:armor_stand ~0.0 ~0.0 ~0.0 {Marker:1b, Tags:[e9sfloor], Invisible:1b}
execute positioned -8.0 60.5025 -16.0 run summon minecraft:armor_stand ~0.0 ~0.0 ~0.0 {Marker:1b, Tags:[e9sfloor], Invisible:1b}
execute positioned -8.0 60.5025 8.0 run summon minecraft:armor_stand ~0.0 ~0.0 ~0.0 {Marker:1b, Tags:[e9sfloor], Invisible:1b}
execute positioned -8.0 60.5025 16.0 run summon minecraft:armor_stand ~0.0 ~0.0 ~0.0 {Marker:1b, Tags:[e9sfloor], Invisible:1b}

execute positioned 16.0 60.5025 0.0 run summon minecraft:armor_stand ~0.0 ~0.0 ~0.0 {Marker:1b, Tags:[e9sfloor], Invisible:1b}
execute positioned 16.0 60.5025 -8.0 run summon minecraft:armor_stand ~0.0 ~0.0 ~0.0 {Marker:1b, Tags:[e9sfloor], Invisible:1b}
execute positioned 16.0 60.5025 -16.0 run summon minecraft:armor_stand ~0.0 ~0.0 ~0.0 {Marker:1b, Tags:[e9sfloor], Invisible:1b}
execute positioned 16.0 60.5025 8.0 run summon minecraft:armor_stand ~0.0 ~0.0 ~0.0 {Marker:1b, Tags:[e9sfloor], Invisible:1b}
execute positioned 16.0 60.5025 16.0 run summon minecraft:armor_stand ~0.0 ~0.0 ~0.0 {Marker:1b, Tags:[e9sfloor], Invisible:1b}

execute positioned -16.0 60.5025 0.0 run summon minecraft:armor_stand ~0.0 ~0.0 ~0.0 {Marker:1b, Tags:[e9sfloor], Invisible:1b}
execute positioned -16.0 60.5025 -8.0 run summon minecraft:armor_stand ~0.0 ~0.0 ~0.0 {Marker:1b, Tags:[e9sfloor], Invisible:1b}
execute positioned -16.0 60.5025 -16.0 run summon minecraft:armor_stand ~0.0 ~0.0 ~0.0 {Marker:1b, Tags:[e9sfloor], Invisible:1b}
execute positioned -16.0 60.5025 8.0 run summon minecraft:armor_stand ~0.0 ~0.0 ~0.0 {Marker:1b, Tags:[e9sfloor], Invisible:1b}
execute positioned -16.0 60.5025 16.0 run summon minecraft:armor_stand ~0.0 ~0.0 ~0.0 {Marker:1b, Tags:[e9sfloor], Invisible:1b}

tag @a[gamemode=!spectator] add gaming


tag @e[tag=!selected,limit=1,sort=random,tag=e9sfloor] add selecting
tag @a[tag=!joined, sort=random, limit=1] add joining
execute positioned as @e[tag=selecting, limit=1] as @a[tag=joining] run tp @s ~ ~10 ~
tag @e[tag=selecting] add selected
tag @e[tag=joining] add joined
tag @e remove selecting
tag @a remove joining

tag @e[tag=!selected,limit=1,sort=random,tag=e9sfloor] add selecting
tag @a[tag=!joined, sort=random, limit=1] add joining
execute positioned as @e[tag=selecting, limit=1] as @a[tag=joining] run tp @s ~ ~10 ~
tag @e[tag=selecting] add selected
tag @e[tag=joining] add joined
tag @e remove selecting
tag @a remove joining

tag @e[tag=!selected,limit=1,sort=random,tag=e9sfloor] add selecting
tag @a[tag=!joined, sort=random, limit=1] add joining
execute positioned as @e[tag=selecting, limit=1] as @a[tag=joining] run tp @s ~ ~10 ~
tag @e[tag=selecting] add selected
tag @e[tag=joining] add joined
tag @e remove selecting
tag @a remove joining

tag @e[tag=!selected,limit=1,sort=random,tag=e9sfloor] add selecting
tag @a[tag=!joined, sort=random, limit=1] add joining
execute positioned as @e[tag=selecting, limit=1] as @a[tag=joining] run tp @s ~ ~10 ~
tag @e[tag=selecting] add selected
tag @e[tag=joining] add joined
tag @e remove selecting
tag @a remove joining

tag @e[tag=!selected,limit=1,sort=random,tag=e9sfloor] add selecting
tag @a[tag=!joined, sort=random, limit=1] add joining
execute positioned as @e[tag=selecting, limit=1] as @a[tag=joining] run tp @s ~ ~10 ~
tag @e[tag=selecting] add selected
tag @e[tag=joining] add joined
tag @e remove selecting
tag @a remove joining

tag @e[tag=!selected,limit=1,sort=random,tag=e9sfloor] add selecting
tag @a[tag=!joined, sort=random, limit=1] add joining
execute positioned as @e[tag=selecting, limit=1] as @a[tag=joining] run tp @s ~ ~10 ~
tag @e[tag=selecting] add selected
tag @e[tag=joining] add joined
tag @e remove selecting
tag @a remove joining

tag @e[tag=!selected,limit=1,sort=random,tag=e9sfloor] add selecting
tag @a[tag=!joined, sort=random, limit=1] add joining
execute positioned as @e[tag=selecting, limit=1] as @a[tag=joining] run tp @s ~ ~10 ~
tag @e[tag=selecting] add selected
tag @e[tag=joining] add joined
tag @e remove selecting
tag @a remove joining

tag @e[tag=!selected,limit=1,sort=random,tag=e9sfloor] add selecting
tag @a[tag=!joined, sort=random, limit=1] add joining
execute positioned as @e[tag=selecting, limit=1] as @a[tag=joining] run tp @s ~ ~10 ~
tag @e[tag=selecting] add selected
tag @e[tag=joining] add joined
tag @e remove selecting
tag @a remove joining

tag @e[tag=!selected,limit=1,sort=random,tag=e9sfloor] add selecting
tag @a[tag=!joined, sort=random, limit=1] add joining
execute positioned as @e[tag=selecting, limit=1] as @a[tag=joining] run tp @s ~ ~10 ~
tag @e[tag=selecting] add selected
tag @e[tag=joining] add joined
tag @e remove selecting
tag @a remove joining

tag @e[tag=!selected,limit=1,sort=random,tag=e9sfloor] add selecting
tag @a[tag=!joined, sort=random, limit=1] add joining
execute positioned as @e[tag=selecting, limit=1] as @a[tag=joining] run tp @s ~ ~10 ~
tag @e[tag=selecting] add selected
tag @e[tag=joining] add joined
tag @e remove selecting
tag @a remove joining

tag @e[tag=!selected,limit=1,sort=random,tag=e9sfloor] add selecting
tag @a[tag=!joined, sort=random, limit=1] add joining
execute positioned as @e[tag=selecting, limit=1] as @a[tag=joining] run tp @s ~ ~10 ~
tag @e[tag=selecting] add selected
tag @e[tag=joining] add joined
tag @e remove selecting
tag @a remove joining

tag @e[tag=!selected,limit=1,sort=random,tag=e9sfloor] add selecting
tag @a[tag=!joined, sort=random, limit=1] add joining
execute positioned as @e[tag=selecting, limit=1] as @a[tag=joining] run tp @s ~ ~10 ~
tag @e[tag=selecting] add selected
tag @e[tag=joining] add joined
tag @e remove selecting
tag @a remove joining

tag @e[tag=!selected,limit=1,sort=random,tag=e9sfloor] add selecting
tag @a[tag=!joined, sort=random, limit=1] add joining
execute positioned as @e[tag=selecting, limit=1] as @a[tag=joining] run tp @s ~ ~10 ~
tag @e[tag=selecting] add selected
tag @e[tag=joining] add joined
tag @e remove selecting
tag @a remove joining

tag @e[tag=!selected,limit=1,sort=random,tag=e9sfloor] add selecting
tag @a[tag=!joined, sort=random, limit=1] add joining
execute positioned as @e[tag=selecting, limit=1] as @a[tag=joining] run tp @s ~ ~10 ~
tag @e[tag=selecting] add selected
tag @e[tag=joining] add joined
tag @e remove selecting
tag @a remove joining

tag @e[tag=!selected,limit=1,sort=random,tag=e9sfloor] add selecting
tag @a[tag=!joined, sort=random, limit=1] add joining
execute positioned as @e[tag=selecting, limit=1] as @a[tag=joining] run tp @s ~ ~10 ~
tag @e[tag=selecting] add selected
tag @e[tag=joining] add joined
tag @e remove selecting
tag @a remove joining

tag @e[tag=!selected,limit=1,sort=random,tag=e9sfloor] add selecting
tag @a[tag=!joined, sort=random, limit=1] add joining
execute positioned as @e[tag=selecting, limit=1] as @a[tag=joining] run tp @s ~ ~10 ~
tag @e[tag=selecting] add selected
tag @e[tag=joining] add joined
tag @e remove selecting
tag @a remove joining

tag @e[tag=!selected,limit=1,sort=random,tag=e9sfloor] add selecting
tag @a[tag=!joined, sort=random, limit=1] add joining
execute positioned as @e[tag=selecting, limit=1] as @a[tag=joining] run tp @s ~ ~10 ~
tag @e[tag=selecting] add selected
tag @e[tag=joining] add joined
tag @e remove selecting
tag @a remove joining

tag @e[tag=!selected,limit=1,sort=random,tag=e9sfloor] add selecting
tag @a[tag=!joined, sort=random, limit=1] add joining
execute positioned as @e[tag=selecting, limit=1] as @a[tag=joining] run tp @s ~ ~10 ~
tag @e[tag=selecting] add selected
tag @e[tag=joining] add joined
tag @e remove selecting
tag @a remove joining

tag @e[tag=!selected,limit=1,sort=random,tag=e9sfloor] add selecting
tag @a[tag=!joined, sort=random, limit=1] add joining
execute positioned as @e[tag=selecting, limit=1] as @a[tag=joining] run tp @s ~ ~10 ~
tag @e[tag=selecting] add selected
tag @e[tag=joining] add joined
tag @e remove selecting
tag @a remove joining

tag @e[tag=!selected,limit=1,sort=random,tag=e9sfloor] add selecting
tag @a[tag=!joined, sort=random, limit=1] add joining
execute positioned as @e[tag=selecting, limit=1] as @a[tag=joining] run tp @s ~ ~10 ~
tag @e[tag=selecting] add selected
tag @e[tag=joining] add joined
tag @e remove selecting
tag @a remove joining

tag @e[tag=!selected,limit=1,sort=random,tag=e9sfloor] add selecting
tag @a[tag=!joined, sort=random, limit=1] add joining
execute positioned as @e[tag=selecting, limit=1] as @a[tag=joining] run tp @s ~ ~10 ~
tag @e[tag=selecting] add selected
tag @e[tag=joining] add joined
tag @e remove selecting
tag @a remove joining

tag @e[tag=!selected,limit=1,sort=random,tag=e9sfloor] add selecting
tag @a[tag=!joined, sort=random, limit=1] add joining
execute positioned as @e[tag=selecting, limit=1] as @a[tag=joining] run tp @s ~ ~10 ~
tag @e[tag=selecting] add selected
tag @e[tag=joining] add joined
tag @e remove selecting
tag @a remove joining

tag @e[tag=!selected,limit=1,sort=random,tag=e9sfloor] add selecting
tag @a[tag=!joined, sort=random, limit=1] add joining
execute positioned as @e[tag=selecting, limit=1] as @a[tag=joining] run tp @s ~ ~10 ~
tag @e[tag=selecting] add selected
tag @e[tag=joining] add joined
tag @e remove selecting
tag @a remove joining

tag @e[tag=!selected,limit=1,sort=random,tag=e9sfloor] add selecting
tag @a[tag=!joined, sort=random, limit=1] add joining
execute positioned as @e[tag=selecting, limit=1] as @a[tag=joining] run tp @s ~ ~10 ~
tag @e[tag=selecting] add selected
tag @e[tag=joining] add joined
tag @e remove selecting
tag @a remove joining

tag @e[tag=!selected,limit=1,sort=random,tag=e9sfloor] add selecting
tag @a[tag=!joined, sort=random] add joining
execute positioned as @e[tag=selecting, limit=1] as @a[tag=joining] run tp @s ~ ~10 ~
tag @e[tag=selecting] add selected
tag @e[tag=joining] add joined
tag @e remove selecting
tag @a remove joining

effect give @a[tag=gaming] minecraft:blindness 3 0 true
effect give @a[tag=gaming] minecraft:night_vision 3 0 true
effect give @a[tag=gaming] minecraft:slowness 3 127 true
effect give @a minecraft:instant_health 1 10 true

title @a subtitle {"text":"注意隐藏手上物品"}
title @a title {"text":"游戏开始！"}

scoreboard objectives remove dcstats
scoreboard objectives add dcstats dummy
scoreboard objectives setdisplay sidebar dcstats
scoreboard players set @a dcstats 0

spawnpoint @a 0 60 66