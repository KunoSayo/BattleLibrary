execute if score ffc bau matches 1.. run fill -20 65 -20 20 65 20 grass replace air
execute if score ffc bau matches 1.. run scoreboard players remove ffc bau 1
execute unless score ffc bau matches 1.. run fill -20 65 -20 20 65 20 air replace grass
execute unless score ffc bau matches 1.. run scoreboard players reset ffc

scoreboard players remove @a[scores={ffccd=1..}] ffccd 1
scoreboard players reset @a[scores={ffccd=0}] ffccd