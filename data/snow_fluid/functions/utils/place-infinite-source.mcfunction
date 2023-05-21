
#declare tag snow_fluid.infinite-source
execute align xyz run summon marker ~.5 ~.5 ~.5 {Tags: ["snow_fluid.source", "snow_fluid.temp-initial-source", "snow_fluid.infinite-source"]}
execute as @e[tag=snow_fluid.temp-initial-source] run scoreboard players set @s snow_fluid.level 7
