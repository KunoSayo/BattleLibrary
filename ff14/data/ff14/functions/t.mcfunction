scoreboard players set cc bau 3
function battle:circle/0.5
function battle:circle/1.5
function battle:circle/2.5
function battle:circle/3.5
function battle:circle/4.5
function battle:circle/1.0
function battle:circle/2.0
function battle:circle/3.0
function battle:circle/4.0
function battle:circle/5.0
scoreboard players add @a[distance=..5] dmg 2
execute unless entity @a[distance=0.00001..5] run scoreboard players add @a[distance=..5] dmg 2
playsound minecraft:block.note_block.flute master @a ~ ~ ~ 100 2