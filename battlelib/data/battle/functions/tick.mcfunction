function battleapi:pretick


# Time to live logic
tag @e remove battleLibTagKill
tag @e[scores={timeToLive=0}] add battleLibTagKill
scoreboard players reset @e[tag=battleLibTagKill] timeToLive
kill @e[tag=battleLibTagKill]
scoreboard players operation @e[scores={timeToLive=1..}] timeToLive -= 1 consts




# Time logic
scoreboard players add time time 1
scoreboard players remove cd time 1

## Time logic about mod n
scoreboard players add m2 time 1
scoreboard players add m10 time 1
scoreboard players add m20 time 1
scoreboard players add m50 time 1
scoreboard players add m100 time 1
scoreboard players add m200 time 1
execute if score m2 time matches 2.. run scoreboard players set m2 time 0
execute if score m10 time matches 10.. run scoreboard players set m10 time 0
execute if score m20 time matches 20.. run scoreboard players set m20 time 0
execute if score m50 time matches 50.. run scoreboard players set m50 time 0
execute if score m100 time matches 100.. run scoreboard players set m100 time 0
execute if score m200 time matches 200.. run scoreboard players set m200 time 0

# dmg & heal tick

execute as @a[scores={dmg=1..}] unless score @s dmgcd matches 1.. run function battle:_checkdmg
scoreboard players remove @a[scores={dmgcd=1..}] dmgcd 1
scoreboard players reset @a[scores={dmgcd=0}] dmgcd

execute as @a[scores={heal=1..}] unless score @s healcd matches 1.. run function battle:_checkheal
scoreboard players remove @a[scores={healcd=1..}] healcd 1
scoreboard players reset @a[scores={healcd=0}] healcd



# dmg
execute as @e[tag=showDmgAs] at @s run tp ~ ~0.0625 ~

# events
execute as @a[scores={Death=1..}] at @s run function battleapi:on_death
execute as @a[scores={walk=3..}] at @s run function battleapi:on_move
execute as @a[scores={run=1..}] at @s run function battleapi:on_move
execute as @a[scores={crouch=1..}] at @s run function battleapi:on_move
execute as @a[scores={sneak=1..}] at @s run function battleapi:on_sneak

scoreboard players reset @a walk
scoreboard players reset @a run
scoreboard players reset @a crouch
scoreboard players reset @a sneak

execute as @a run function battle:check_inv


execute as @a[scores={chant=0..}] run function battleapi:chant_cb
execute as @a[scores={chant=0}] run scoreboard players reset @s chant
execute as @a[scores={gcd=0}] run scoreboard players reset @s gcd

execute as @a[scores={chant=1..}] run scoreboard players remove @s chant 1
execute as @a[scores={gcd=1..}] run scoreboard players remove @s gcd 1


# safe
kill @e[type=minecraft:tnt_minecart]
kill @e[type=minecraft:tnt]


function battleapi:posttick
