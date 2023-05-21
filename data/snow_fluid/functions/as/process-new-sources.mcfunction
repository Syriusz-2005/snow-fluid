scoreboard players set $two snow_fluid.operations 2
scoreboard players set $five snow_fluid.operations 5

#first handling placing new sources
execute positioned ~ ~ ~-1 if block ~ ~ ~ air align xyz positioned ~.5 ~.5 ~.5 unless entity @e[distance=..0.2,type=marker] run function snow_fluid:directions/place-new-source
execute positioned ~ ~ ~1 if block ~ ~ ~ air align xyz positioned ~.5 ~.5 ~.5 unless entity @e[distance=..0.2,type=marker] run function snow_fluid:directions/place-new-source
execute positioned ~-1 ~ ~ if block ~ ~ ~ air align xyz positioned ~.5 ~.5 ~.5 unless entity @e[distance=..0.2,type=marker] run function snow_fluid:directions/place-new-source
execute positioned ~1 ~ ~ if block ~ ~ ~ air align xyz positioned ~.5 ~.5 ~.5 unless entity @e[distance=..0.2,type=marker] run function snow_fluid:directions/place-new-source
execute positioned ~ ~-1 ~ if block ~ ~ ~ air align xyz positioned ~.5 ~.5 ~.5 unless entity @e[distance=..0.2,type=marker] run function snow_fluid:directions/place-new-source


scoreboard players set $adjacentFluidsCount snow_fluid.operations 1
#then rebalancing it with the rest
execute positioned ~ ~-1 ~ align xyz positioned ~.5 ~.5 ~.5 if entity @e[distance=..0.2,type=marker,limit=1] run function snow_fluid:directions/fill-below
scoreboard players operation $fluidLevelSum snow_fluid.operations = @s snow_fluid.level

execute positioned ~ ~ ~-1 align xyz positioned ~.5 ~.5 ~.5 if entity @e[distance=..0.2,type=marker,limit=1] run function snow_fluid:directions/rebalance
execute positioned ~ ~ ~1 align xyz positioned ~.5 ~.5 ~.5 if entity @e[distance=..0.2,type=marker,limit=1] run function snow_fluid:directions/rebalance
execute positioned ~-1 ~ ~ align xyz positioned ~.5 ~.5 ~.5 if entity @e[distance=..0.2,type=marker,limit=1] run function snow_fluid:directions/rebalance
execute positioned ~1 ~ ~ align xyz positioned ~.5 ~.5 ~.5 if entity @e[distance=..0.2,type=marker,limit=1] run function snow_fluid:directions/rebalance


scoreboard players operation $fluidLevelSum snow_fluid.operations /= $adjacentFluidsCount snow_fluid.operations

scoreboard players operation @s snow_fluid.level = $fluidLevelSum snow_fluid.operations
# execute if score $fluidLevelSum snow_fluid.operations matches 1.. run scoreboard players operation @e[distance=..0.2,type=marker,limit=1] snow_fluid.level = $fluidLevelSum snow_fluid.operations 

execute positioned ~ ~ ~-1 align xyz positioned ~.5 ~.5 ~.5 as @e[distance=..0.2,type=marker,limit=1] run scoreboard players operation @s snow_fluid.level = $fluidLevelSum snow_fluid.operations
execute positioned ~ ~ ~1 align xyz positioned ~.5 ~.5 ~.5 as @e[distance=..0.2,type=marker,limit=1] run scoreboard players operation @s snow_fluid.level = $fluidLevelSum snow_fluid.operations
execute positioned ~-1 ~ ~ align xyz positioned ~.5 ~.5 ~.5 as @e[distance=..0.2,type=marker,limit=1] run scoreboard players operation @s snow_fluid.level = $fluidLevelSum snow_fluid.operations
execute positioned ~1 ~ ~ align xyz positioned ~.5 ~.5 ~.5 as @e[distance=..0.2,type=marker,limit=1] run scoreboard players operation @s snow_fluid.level = $fluidLevelSum snow_fluid.operations

scoreboard players reset $fluidLevelSum snow_fluid.operations


execute as @e[tag=snow_fluid.temp-initial-natural-source] run tag @s remove snow_fluid.temp-initial-natural-source


scoreboard players reset @s snow_fluid.directions-count
