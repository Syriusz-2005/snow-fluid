

scoreboard players operation $lowerFluidLevel snow_fluid.operations = @e[distance=..0.2,type=marker,limit=1] snow_fluid.level


#future constant
scoreboard players set $levelsToFill snow_fluid.operations 8
scoreboard players operation $levelsToFill snow_fluid.operations -= $lowerFluidLevel snow_fluid.operations


scoreboard players operation $levelsToFill snow_fluid.operations < @s snow_fluid.level
execute if score $levelsToFill snow_fluid.operations matches ..0 run scoreboard players set $levelsToFill snow_fluid.operations 0

scoreboard players operation @e[distance=..0.2,type=marker,limit=1] snow_fluid.level += $levelsToFill snow_fluid.operations
