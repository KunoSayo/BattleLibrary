effect give @a minecraft:jump_boost 3 128
effect give @a minecraft:slowness 3 128
tag @a add noskill

summon minecraft:armor_stand 0 64.25 -8 {NoGravity:1b, Marker:1b, Tags:[bossas, ffcas, lw], Invisible:1b}
summon minecraft:armor_stand 0 64.25 8 {NoGravity:1b, Marker:1b, Tags:[bossas, ffcas, lw], Invisible:1b}
summon minecraft:armor_stand -8 64.25 0 {NoGravity:1b, Marker:1b, Tags:[bossas, ffcas, lw], Invisible:1b}
summon minecraft:armor_stand 8 64.25 0 {NoGravity:1b, Marker:1b, Tags:[bossas, ffcas, lw], Invisible:1b}

summon minecraft:armor_stand 0 63.5 -8 {NoGravity:1b, Marker:1b, Tags:[bossas, ffcas, lw], Invisible:1b}
summon minecraft:armor_stand 0 63.5 8 {NoGravity:1b, Marker:1b, Tags:[bossas, ffcas, lw], Invisible:1b}
summon minecraft:armor_stand -8 63.5 0 {NoGravity:1b, Marker:1b, Tags:[bossas, ffcas, lw], Invisible:1b}
summon minecraft:armor_stand 8 63.5 0 {NoGravity:1b, Marker:1b, Tags:[bossas, ffcas, lw], Invisible:1b}



execute as @e[tag=limit] run data modify entity @s ArmorItems[3] set value {id:"yellow_wool", Count:1}
execute as @e[tag=lw] run data modify entity @s ArmorItems[3] set value {id:"yellow_wool", Count:1}

tag @e[tag=limit] add lac


