scoreboard players set bosschantmax bau 60

tellraw @a {"text":"\u00a7e巴尔巴莉希娅正在发动“咒发束缚”。"}
bossbar set minecraft:bosschant name {"text":"\u00a7e咒发束缚"}
function ff14:ffc/chant_phase

scoreboard players set @a[tag=gaming] hair 0
scoreboard players set limited bau 0
scoreboard players set @a[tag=ffcbattle, scores={hair=0}, limit=1, sort=random] hair 1
scoreboard players set @a[tag=ffcbattle, scores={hair=0}, limit=1, sort=random] hair 2
scoreboard players set @a[tag=ffcbattle, scores={hair=0}, limit=1, sort=random] hair 3
scoreboard players set @a[tag=ffcbattle, scores={hair=0}, limit=1, sort=random] hair 4


scoreboard players set forward bas 120

schedule function ff14:ffc/hair_limit/start_limit 5s append
schedule function ff14:ffc/hair_limit/start_limit_2 7s append
schedule function ff14:ffc/hair_limit/start_limit_3 8s append