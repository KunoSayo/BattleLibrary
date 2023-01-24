# We use bau::cc for dust color
# 1 for yellow
# 2 for green
# 3 for blue
# 4 for red
# 5 for x color
# 6 for attack
# 7 for purple
# 10 for white
# 11 for green and y
# 12 for aqua
# 13 for grass block out..
# 9961 for firework
execute if score cc bau matches ..7 run function ff14:_color_dust
execute if score cc bau matches 10.. run function ff14:_special_dust
