scoreboard players set bosschantmax bau 60

tellraw @a {"text":"\u00a7e巴尔巴莉希娅正在发动“咒发拘束”。"}
bossbar set minecraft:bosschant name {"text":"\u00a7e咒发拘束"}
function ff14:ffc/chant_phase

summon minecraft:armor_stand 0 65 -8 {NoGravity:1b, Marker:1b, Tags:[bossas, ffcas, aoeas, aoe3.5], Invisible:1b}
summon minecraft:armor_stand 0 65 8 {NoGravity:1b, Marker:1b, Tags:[bossas, ffcas, aoeas, aoe3.5], Invisible:1b}
summon minecraft:armor_stand -8 65 0 {NoGravity:1b, Marker:1b, Tags:[bossas, ffcas, aoeas, aoe3.5], Invisible:1b}
summon minecraft:armor_stand 8 65 0 {NoGravity:1b, Marker:1b, Tags:[bossas, ffcas, aoeas, aoe3.5], Invisible:1b}

summon minecraft:armor_stand 0 65 -8 {NoGravity:1b, Marker:1b, Tags:[bossas, ffcas, limit, block], Invisible:1b}
summon minecraft:armor_stand 0 65 8 {NoGravity:1b, Marker:1b, Tags:[bossas, ffcas, limit, block], Invisible:1b}
summon minecraft:armor_stand -8 65 0 {NoGravity:1b, Marker:1b, Tags:[bossas, ffcas, limit, block], Invisible:1b}
summon minecraft:armor_stand 8 65 0 {NoGravity:1b, Marker:1b, Tags:[bossas, ffcas, limit, block], Invisible:1b}
scoreboard players set @e[tag=aoeas] timeToLive 81

scoreboard objectives add hair dummy

scoreboard players set @e[tag=limit,type=armor_stand] hair 0
scoreboard players set @a[tag=gaming] hair 0

scoreboard players set @a[tag=ffcbattle, scores={hair=0}, limit=1, sort=random] hair 1
scoreboard players set @a[tag=ffcbattle, scores={hair=0}, limit=1, sort=random] hair 2
scoreboard players set @a[tag=ffcbattle, scores={hair=0}, limit=1, sort=random] hair 3
scoreboard players set @a[tag=ffcbattle, scores={hair=0}, limit=1, sort=random] hair 4

scoreboard players set @e[tag=limit, scores={hair=0}, limit=1, sort=random] hair 1
scoreboard players set @e[tag=limit, scores={hair=0}, limit=1, sort=random] hair 2
scoreboard players set @e[tag=limit, scores={hair=0}, limit=1, sort=random] hair 3
scoreboard players set @e[tag=limit, scores={hair=0}, limit=1, sort=random] hair 4

scoreboard players set forward bas 120