# Forward 19.078784
tellraw @a {"text":"\u00a7e巴尔巴莉希娅发动了“警戒狂风”。"}
tp @s 0 65 0
summon minecraft:armor_stand 0 65 0 {Rotation:[180.0f, 0.0f],ShowArms:1b, Invisible: 0b, NoBasePlate:1b, Invulnerable:1b, DisabledSlots:4144896, ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color: 65280}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color: 65280}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color: 65280}}},{id:"minecraft:leather_helmet",Count:1b, tag:{display:{color: 65280}}}], Tags:[ffcenemy, enemy], HandItems:[{id:"diamond_sword",Count:1}, {}], NoGravity:1b}
summon minecraft:armor_stand 0 65 0 {Rotation:[120.0f, 0.0f],ShowArms:1b, Invisible: 0b, NoBasePlate:1b, Invulnerable:1b, DisabledSlots:4144896, ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color: 65280}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color: 65280}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color: 65280}}},{id:"minecraft:leather_helmet",Count:1b, tag:{display:{color: 65280}}}], Tags:[ffcenemy, enemy], HandItems:[{id:"diamond_sword",Count:1}, {}], NoGravity:1b}
summon minecraft:armor_stand 0 65 0 {Rotation:[60.0f, 0.0f],ShowArms:1b, Invisible: 0b, NoBasePlate:1b, Invulnerable:1b, DisabledSlots:4144896, ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color: 65280}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color: 65280}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color: 65280}}},{id:"minecraft:leather_helmet",Count:1b, tag:{display:{color: 65280}}}], Tags:[ffcenemy, enemy], HandItems:[{id:"diamond_sword",Count:1}, {}], NoGravity:1b}
summon minecraft:armor_stand 0 65 0 {Rotation:[0.0f, 0.0f],ShowArms:1b, Invisible: 0b, NoBasePlate:1b, Invulnerable:1b, DisabledSlots:4144896, ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color: 65280}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color: 65280}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color: 65280}}},{id:"minecraft:leather_helmet",Count:1b, tag:{display:{color: 65280}}}], Tags:[ffcenemy, enemy], HandItems:[{id:"diamond_sword",Count:1}, {}], NoGravity:1b}
summon minecraft:armor_stand 0 65 0 {Rotation:[-60.0f, 0.0f],ShowArms:1b, Invisible: 0b, NoBasePlate:1b, Invulnerable:1b, DisabledSlots:4144896, ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color: 65280}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color: 65280}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color: 65280}}},{id:"minecraft:leather_helmet",Count:1b, tag:{display:{color: 65280}}}], Tags:[ffcenemy, enemy], HandItems:[{id:"diamond_sword",Count:1}, {}], NoGravity:1b}
summon minecraft:armor_stand 0 65 0 {Rotation:[-120.0f, 0.0f],ShowArms:1b, Invisible: 0b, NoBasePlate:1b, Invulnerable:1b, DisabledSlots:4144896, ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color: 65280}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color: 65280}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color: 65280}}},{id:"minecraft:leather_helmet",Count:1b, tag:{display:{color: 65280}}}], Tags:[ffcenemy, enemy], HandItems:[{id:"diamond_sword",Count:1}, {}], NoGravity:1b}

function ff14:ffc/warn_wind/warn

schedule function ff14:ffc/warn_wind/warn 1s append
schedule function ff14:ffc/warn_wind/warn 2s append
schedule function ff14:ffc/warn_wind/warn 3s append
schedule function ff14:ffc/warn_wind/warn 4s append

schedule function ff14:ffc/warn_wind/cast_1 5s append


schedule function ff14:ffc/warn_wind/warn 9s append

schedule function ff14:ffc/warn_wind/warn 10s append

schedule function ff14:ffc/warn_wind/cast_2 11s append

schedule function ff14:ffc/warn_wind/warn 221t append

schedule function ff14:ffc/warn_wind/warn 12s append

schedule function ff14:ffc/warn_wind/cast_3 13s append

schedule function ff14:ffc/warn_wind/warn 14s append
schedule function ff14:ffc/warn_wind/warn 15s append
schedule function ff14:ffc/warn_wind/warn 16s append
schedule function ff14:ffc/warn_wind/warn 17s append
schedule function ff14:ffc/warn_wind/warn 18s append
schedule function ff14:ffc/warn_wind/warn 19s append

schedule function ff14:ffc/warn_wind/cast_4 20s append