execute if predicate orange:is_wearing_full_stablizing run return run function orange:time_stablizing/victim
execute if predicate orange:activates_time_interferometer at @s run return run function orange:time_interferometer/activated
execute as @s[type=!#orange:possesses_time] run return fail
scoreboard players set $time_stealing orange.temp 1
execute if score $time_stealing.cmd_victim orange.arg matches 1.. run scoreboard players operation $time_stealing orange.temp = $time_stealing.cmd_victim orange.arg

scoreboard players set $add_level orange.temp 0
execute as @e[limit=1,tag=orange.time_stealing.attacker] if predicate orange:activates_time_catalyst run scoreboard players add $add_level orange.temp 1
scoreboard players operation $time_stealing orange.temp += $add_level orange.temp
scoreboard players operation $time_stealing_add orange.temp += $add_level orange.temp

scoreboard players operation $time_stealing_2 orange.temp = $time_stealing orange.temp
scoreboard players operation $time_stealing_2 orange.temp += $time_stealing orange.temp
execute unless score @s orange.time_stealing.level matches 1.. run scoreboard players operation @s orange.time_stealing.level -= $time_stealing orange.temp
execute if score @s orange.time_stealing.level matches 1.. run scoreboard players operation @s orange.time_stealing.level -= $time_stealing_2 orange.temp
execute if score @s orange.time_stealing.level matches ..-1 run scoreboard players set @s orange.time_stealing.duration 100
execute if score @s orange.time_stealing.level matches 1.. run scoreboard players remove @s orange.time_stealing.duration 40
execute if score @s orange.time_stealing.level matches ..-6 run scoreboard players set @s orange.time_stealing.level -5
execute if score @s orange.time_stealing.duration matches ..0 run return run function orange:time_stealing/clear
function orange:time_stealing/effect
scoreboard players reset $time_stealing.cmd_victim orange.arg
return 1
