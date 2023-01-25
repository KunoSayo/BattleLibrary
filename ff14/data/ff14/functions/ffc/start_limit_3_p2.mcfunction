tag @a remove noskill
effect give @a[tag=ffcbattle] minecraft:slowness 20 2
tellraw @a {"text":"带有魔力的头发缠绕在了身上！", "color":"gray"}

effect give @a[tag=ffcbattle] minecraft:wither 20 0

scoreboard players set @e[tag=lw] timeToLive 401
scoreboard players set @e[tag=limit] timeToLive 401