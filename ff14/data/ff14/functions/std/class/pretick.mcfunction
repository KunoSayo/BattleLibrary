execute as @a[tag=noskill] run function ff14:std/noskill


# execute as @a[tag={class}] at @s run function ff14:std/class/{class}/ui

execute as @a[tag=white_magic] at @s run function ff14:std/class/white_magic/ui
execute as @a[tag=e9swm] at @s run function ff14:std/class/e9swm/ui

# some common skills.

scoreboard players remove @a[scores={ffccd=1..}] ffccd 1
scoreboard players reset @a[scores={ffccd=0}] ffccd




execute as @a run function ff14:std/gcd_ui
