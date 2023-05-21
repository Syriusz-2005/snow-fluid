

scoreboard players add @s snow_fluid.directions-count 1
summon marker ~ ~ ~ {Tags: ["snow_fluid.source", "snow_fluid.temp-initial-source", "snow_fluid.temp-initial-natural-source"], data: {initial_fluid_level: 0}}
scoreboard players set @e[tag=snow_fluid.temp-initial-natural-source,sort=nearest,limit=1,distance=..1] snow_fluid.level 1

scoreboard players remove @s snow_fluid.level 1
# execute as @e[tag=snow_fluid.temp-initial-natural-source,limit=1] at @s run function snow_fluid:directions/initialize-natural-source-north