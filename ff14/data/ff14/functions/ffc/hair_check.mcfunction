scoreboard players set cc bau 11
execute if score m10 time matches 0 run function battle:circle/5.0

execute if score m10 time matches 0 if score @s hair matches 1 as @a[scores={hair=1}] at @s positioned ~ 65 ~ facing entity @e[tag=limit, scores={hair=1}] eyes rotated ~ 0 run function battle:forward
execute if score m10 time matches 0 if score @s hair matches 2 as @a[scores={hair=2}] at @s positioned ~ 65 ~ facing entity @e[tag=limit, scores={hair=2}] eyes rotated ~ 0 run function battle:forward
execute if score m10 time matches 0 if score @s hair matches 3 as @a[scores={hair=3}] at @s positioned ~ 65 ~ facing entity @e[tag=limit, scores={hair=3}] eyes rotated ~ 0 run function battle:forward
execute if score m10 time matches 0 if score @s hair matches 4 as @a[scores={hair=4}] at @s positioned ~ 65 ~ facing entity @e[tag=limit, scores={hair=4}] eyes rotated ~ 0 run function battle:forward