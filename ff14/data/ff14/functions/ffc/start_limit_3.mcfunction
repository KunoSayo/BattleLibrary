tag @a remove noskill
effect give @a[tag=ffcbattle] minecraft:slowness 15 2
tellraw @a {"text":"带有魔力的头发缠绕在了身上！", "color":"gray"}
tag @a[limit=2,sort=random] add ffting
function ff14:cachet