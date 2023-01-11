summon minecraft:area_effect_cloud ~ ~-0.5 ~ {Duration:3,Radius:10.0f,Particle:"minecraft:heart"}
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:10,Radius:10.0f,Particle:"minecraft:dust 0.0 0.0 1.0 1.0"}
scoreboard players add @a[distance=..10] heal 1