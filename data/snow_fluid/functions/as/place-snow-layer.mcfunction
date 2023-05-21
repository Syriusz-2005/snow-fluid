
execute if score @s snow_fluid.level matches ..0 if block ~ ~ ~ snow run setblock ~ ~ ~ air
execute if score @s snow_fluid.level matches 1 if block ~ ~ ~ #snow_fluid:fluid-placable run setblock ~ ~ ~ snow[layers=1]
execute if score @s snow_fluid.level matches 2 if block ~ ~ ~ #snow_fluid:fluid-placable run setblock ~ ~ ~ snow[layers=2]
execute if score @s snow_fluid.level matches 3 if block ~ ~ ~ #snow_fluid:fluid-placable run setblock ~ ~ ~ snow[layers=3]
execute if score @s snow_fluid.level matches 4 if block ~ ~ ~ #snow_fluid:fluid-placable run setblock ~ ~ ~ snow[layers=4]
execute if score @s snow_fluid.level matches 5 if block ~ ~ ~ #snow_fluid:fluid-placable run setblock ~ ~ ~ snow[layers=5]
execute if score @s snow_fluid.level matches 6 if block ~ ~ ~ #snow_fluid:fluid-placable run setblock ~ ~ ~ snow[layers=6]
execute if score @s snow_fluid.level matches 7 if block ~ ~ ~ #snow_fluid:fluid-placable run setblock ~ ~ ~ snow[layers=7]
execute if score @s snow_fluid.level matches 8.. if block ~ ~ ~ #snow_fluid:fluid-placable run setblock ~ ~ ~ snow[layers=8]

execute if score @s snow_fluid.level matches 1..4 run particle falling_water ~ ~ ~ .4 .4 .4 0 5 normal