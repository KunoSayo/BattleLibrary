# We use bau::cc for dust color
# 1 for yellow
# 2 for green
# 3 for blue
# 4 for red
# 5 for x color
execute if score cc bau matches 1 run particle dust 1.0 1.0 0.0 1.0 ~ ~ ~ 0 0 0 0 1 force
execute if score cc bau matches 2 run particle dust 0.0 1.0 0.0 1.0 ~ ~ ~ 0 0 0 0 1 force
execute if score cc bau matches 3 run particle dust 0.0 0.0 1.0 1.0 ~ ~ ~ 0 0 0 0 1 force
execute if score cc bau matches 4 run particle dust 1.0 0.0 0.0 1.0 ~ ~ ~ 0 0 0 0 1 force
execute if score cc bau matches 5 run particle dust 0.93725 0.76862 0.67843 1.0 ~ ~ ~ 0 0 0 0 1 force
execute if score cc bau matches 6 run particle minecraft:sweep_attack ~ ~ ~ 0 0 0 0 1 force

execute if predicate battle:r1d20 if score cc bau matches 9961 run summon minecraft:firework_rocket ~ ~ ~ {LifeTime:20, FireworksItem:{id:"minecraft:firework_rocket", Count:1b, tag:{Fireworks:{Flight:1b, Explosions:[ {Type:4b, Trail:1b, Colors:[I;255, 11660792], FadeColors:[I;65280]} ] }}}}