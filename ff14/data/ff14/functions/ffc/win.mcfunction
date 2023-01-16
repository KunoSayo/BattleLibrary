fill -20 70 -20 20 74 20 air

title @a times 10 40 10
title @a subtitle ""
title @a title {"text":"使命达成", "color":"gold"}

function ff14:win
schedule function ff14:win 10t append
schedule function ff14:win 20t append
schedule function ff14:win 40t append

bossbar remove minecraft:boss
bossbar remove bosschant
kill @e[tag=boss]