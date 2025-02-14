execute store result score $time_stealing orange.temp run data get entity @s active_effects[{id:"minecraft:luck"}].amplifier
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:luck":{duration:1}}}} run effect clear @s minecraft:luck

scoreboard players set @s orange.time_stealing.level_add 0
execute if predicate orange:activates_time_catalyst run scoreboard players add @s orange.time_stealing.level_add 1
scoreboard players operation $time_stealing orange.temp += @s orange.time_stealing.level_add

scoreboard players operation $time_stealing_2 orange.temp = $time_stealing orange.temp
scoreboard players operation $time_stealing_2 orange.temp += $time_stealing orange.temp
execute unless score @s orange.time_stealing.level matches ..-1 run scoreboard players operation @s orange.time_stealing.level += $time_stealing orange.temp
execute if score @s orange.time_stealing.level matches ..-1 run scoreboard players operation @s orange.time_stealing.level += $time_stealing_2 orange.temp
execute if score @s orange.time_stealing.level matches 1.. run scoreboard players set @s orange.time_stealing.duration 100
execute if score @s orange.time_stealing.level matches ..-1 run scoreboard players remove @s orange.time_stealing.duration 40
execute if score @s orange.time_stealing.level matches 6.. run scoreboard players set @s orange.time_stealing.level 5
execute if score @s orange.time_stealing.duration matches ..0 run return run function orange:time_stealing/clear
function orange:time_stealing/effect
