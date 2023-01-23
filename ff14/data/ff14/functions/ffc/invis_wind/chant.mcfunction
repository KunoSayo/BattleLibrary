scoreboard players set bosschantmax bau 60

tellraw @a {"text":"\u00a7e巴尔巴莉希娅正在发动“隐秘之风”。"}
bossbar set minecraft:bosschant name {"text":"\u00a7e隐秘之风"}
function ff14:ffc/chant_phase
function ff14:ffc/warn_invis_wind

schedule function ff14:ffc/invis_wind/warn 10t append
schedule function ff14:ffc/invis_wind/warn 20t append
schedule function ff14:ffc/invis_wind/warn 30t append
schedule function ff14:ffc/invis_wind/warn 40t append
schedule function ff14:ffc/invis_wind/warn 45t append
schedule function ff14:ffc/invis_wind/warn 50t append
schedule function ff14:ffc/invis_wind/warn 55t append
schedule function ff14:ffc/invis_wind/cast 60t append
schedule function ff14:ffc/invis_wind/cast_2 100t append
