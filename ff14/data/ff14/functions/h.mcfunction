scoreboard players set cc bau 8
function battle:circle/2.0
function battle:circle/4.0
function battle:circle/6.0
function battle:circle/8.0
function battle:circle/10.0
scoreboard players set cc bau 9
function battle:circle/11.0
function battle:circle/12.0
function battle:circle/13.0
function battle:circle/14.0
function battle:circle/15.0

scoreboard players set cc bau -8
function battle:circle/16.0
function battle:circle/17.0
function battle:circle/18.0
function battle:circle/19.0
function battle:circle/20.0



scoreboard players add @a[tag=ffcbattle, distance=..10] dmg 1
scoreboard players add @a[tag=ffcbattle, distance=..15] dmg 1
scoreboard players add @a[tag=ffcbattle] dmg 1

playsound minecraft:block.note_block.flute master @a ~ ~ ~ 100 2
