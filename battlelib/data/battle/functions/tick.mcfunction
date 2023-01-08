function battleapi:pretick


# Time to live logic
tag @e remove battleLibTagKill
tag @e[scores={timeToLive=0}] add battleLibTagKill
scoreboard players reset @e[tag=battleLibTagKill] timeToLive
kill @e[tag=battleLibTagKill]
scoreboard players operation @e[scores={timeToLive=1..}] timeToLive -= 1 consts




# Time logic
scoreboard players add gt time 1
execute if score gt time matches 20.. run function battle:_second

# dmg tick

execute as @a[scores={dmg=1..}] unless score @s dmgcd matches 1.. run function battle:_checkdmg
scoreboard players remove @a[scores={dmgcd=1..}] dmgcd 1
scoreboard players reset @a[scores={dmgcd=0}] dmgcd


execute as @a[scores={Death=1..}] at @s run function battleapi:on_death

# dmg
execute as @e[tag=showDmgAs] at @s run tp ~ ~0.0625 ~

# events
execute as @a[scores={Death=1..}] at @s run function battleapi:on_death
execute as @a[scores={walk=1..}] at @s run function battleapi:on_move
execute as @a[scores={crouch=1..}] at @s run function battleapi:on_move
execute as @a[scores={sneak=1..}] at @s run function battleapi:on_sneak

scoreboard players reset @a walk
scoreboard players reset @a crouch
scoreboard players reset @a sneak
scoreboard players reset @a Death

execute as @a unless score @s gcd matches 1.. run function battle:check_inv


execute as @a[scores={chant=0..}] run function battleapi:chant_cb
execute as @a[scores={chant=0}] run scoreboard players reset @s chant
execute as @a[scores={gcd=0}] run scoreboard players reset @s gcd

execute as @a[scores={chant=1..}] run scoreboard players remove @s chant 1
execute as @a[scores={gcd=1..}] run scoreboard players remove @s gcd 1

function battleapi:posttick
