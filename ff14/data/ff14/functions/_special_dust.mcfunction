
execute if score cc bau matches 10 run particle dust 1.0 1 1 1.0 ~ ~ ~ 0 0 0 0 1 force
execute if score cc bau matches 11 run particle dust 0.0 1.0 0.0 0.875 ~ ~0.375 ~ 0 0.25 0 0 5 force
execute if score cc bau matches 12 run particle dust 0.0 1.0 1.0 1.0 ~ ~0.0625 ~ 0 0 0 0 1 force
execute if score cc bau matches 13 run particle minecraft:block grass ~ ~ ~ 0 0 0 0 3 force


execute if predicate battle:r1d20 if score cc bau matches 9961 run summon minecraft:firework_rocket ~ ~ ~ {LifeTime:20, FireworksItem:{id:"minecraft:firework_rocket", Count:1b, tag:{Fireworks:{Flight:1b, Explosions:[ {Type:4b, Trail:1b, Colors:[I;255, 11660792], FadeColors:[I;65280]} ] }}}}