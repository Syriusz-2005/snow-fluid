
#declare tag snow_fluid.infinite-source
#declare tag snow_fluid.source

#declare score_holder $snow_fluid.tick-counter
scoreboard objectives add snow_fluid.config dummy
scoreboard objectives add snow_fluid.timers dummy
scoreboard objectives add snow_fluid.level dummy
scoreboard objectives add snow_fluid.directions-count dummy
scoreboard objectives add snow_fluid.operations dummy

#declare score_holder $snow_fluid.fluid-tick-time
#declare score_holder $snow_fluid.fluid-range
#declare score_holder $snow_fluid.convert-to-infinite-source

scoreboard players set $snow_fluid.fluid-range snow_fluid.config 6
scoreboard players set $snow_fluid.fluid-tick-time snow_fluid.config 5
scoreboard players set $snow_fluid.convert-to-infinite-source snow_fluid.config 1
