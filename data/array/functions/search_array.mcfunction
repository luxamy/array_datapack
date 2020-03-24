summon minecraft:item 0 1 0 {Item:{id:"minecraft:barrier",Count:1b},Tags:["temp"]}
scoreboard players operation @e[type=minecraft:item,tag=temp,limit=1] test = @s test
data modify entity @e[type=minecraft:item,tag=temp,limit=1] Item.tag.array set from storage test:array array

tag @s add temp
execute as @e[type=minecraft:item,tag=temp,limit=1] run loot give @p[tag=temp] loot array:search_array
execute as @e[type=minecraft:item,tag=temp,limit=1] run kill @s
tag @s remove temp