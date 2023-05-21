


# execute if score @s snow_fluid.level matches ..0 run kill @s
execute unless block ~ ~ ~ #snow_fluid:fluid-placable run kill @s

execute store result score $infinite-sources-count snow_fluid.operations if entity @e[tag=snow_fluid.source,tag=snow_fluid.infinite-source,distance=..1.2]
execute store result score $all-sources-count snow_fluid.operations if entity @e[tag=snow_fluid.source,distance=..1.2]

execute if score $all-sources-count snow_fluid.operations matches ..1 run scoreboard players set $all-sources-count snow_fluid.operations 2
execute if score @s snow_fluid.level matches 2.. unless score $infinite-sources-count snow_fluid.operations = $all-sources-count snow_fluid.operations run function snow_fluid:as/process-new-sources

execute if entity @s[tag=!snow_fluid.infinite-source] if score $snow_fluid.convert-to-infinite-source snow_fluid.config matches 1 unless entity @e[tag=snow_fluid.source,scores={snow_fluid.level=..6},distance=..1.3] run tag @s add snow_fluid.infinite-source

execute if block ~ ~-1 ~ snow[layers=8] run function snow_fluid:as/place-snow-layer
execute unless block ~ ~-1 ~ snow unless block ~ ~-1 ~ air run function snow_fluid:as/place-snow-layer
