#declare score_holder $fluidLevelSum

scoreboard players operation $adjacentFluidLevel snow_fluid.operations = @e[distance=..0.2,tag=snow_fluid.source,limit=1] snow_fluid.level
execute if score $adjacentFluidLevel snow_fluid.operations matches ..6 if entity @e[distance=..0.2,tag=snow_fluid.source,tag=snow_fluid.infinite-source,limit=1] run scoreboard players set $adjacentFluidLevel snow_fluid.operations 7
execute if score $adjacentFluidLevel snow_fluid.operations matches ..0 run scoreboard players add $adjacentFluidLevel snow_fluid.operations 1

scoreboard players operation $difference snow_fluid.operations = @s snow_fluid.level
scoreboard players operation $difference snow_fluid.operations -= @e[distance=..0.2,tag=snow_fluid.source,limit=1] snow_fluid.level

execute if score $difference snow_fluid.operations matches 1 run scoreboard players add $adjacentFluidLevel snow_fluid.operations 1
execute if score $difference snow_fluid.operations matches -1 run scoreboard players add $adjacentFluidLevel snow_fluid.operations 1


scoreboard players operation $fluidLevelSum snow_fluid.operations += $adjacentFluidLevel snow_fluid.operations
scoreboard players add $adjacentFluidsCount snow_fluid.operations 1