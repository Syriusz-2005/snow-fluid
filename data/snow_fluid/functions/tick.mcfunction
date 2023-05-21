

scoreboard players add $snow_fluid.tick-counter snow_fluid.timers 1
execute if score $snow_fluid.tick-counter snow_fluid.timers >= $snow_fluid.fluid-tick-time snow_fluid.config run function snow_fluid:run-fluid-tick


execute as @e[tag=snow_fluid.temp-initial-source] at @s run function snow_fluid:as/initialize-source 
