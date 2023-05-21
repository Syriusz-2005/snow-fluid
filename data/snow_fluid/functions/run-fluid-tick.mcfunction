scoreboard players reset $snow_fluid.tick-counter snow_fluid.timers


# say fluid tick!

execute as @e[tag=snow_fluid.infinite-source] if score @s snow_fluid.level matches ..6 run scoreboard players set @s snow_fluid.level 7
execute as @e[tag=snow_fluid.source] at @s run function snow_fluid:as/source-tick