execute if predicate orange:is_wearing_full_stablizing at @s run return run function orange:time_stablizing/attacker
execute as @s[type=!#orange:possesses_time] run return fail
execute at @s run playsound orange:enchant.time_stealing.hit player @a ~ ~ ~
scoreboard players set $time_stealing orange.temp 1
execute if score $time_stealing.cmd_attacker orange.arg matches 1.. run scoreboard players operation $time_stealing orange.temp = $time_stealing.cmd_attacker orange.arg

scoreboard players operation $time_stealing orange.temp += $time_stealing_add orange.temp
scoreboard players reset $time_stealing_add orange.temp

scoreboard players operation $time_stealing_2 orange.temp = $time_stealing orange.temp
scoreboard players operation $time_stealing_2 orange.temp += $time_stealing orange.temp
execute unless score @s orange.time_stealing.level matches ..-1 run scoreboard players operation @s orange.time_stealing.level += $time_stealing orange.temp
execute if score @s orange.time_stealing.level matches ..-1 run scoreboard players operation @s orange.time_stealing.level += $time_stealing_2 orange.temp
execute if score @s orange.time_stealing.level matches 1.. run scoreboard players set @s orange.time_stealing.duration 100
execute if score @s orange.time_stealing.level matches ..-1 run scoreboard players remove @s orange.time_stealing.duration 40
execute if score @s orange.time_stealing.level matches 6.. run scoreboard players set @s orange.time_stealing.level 5
execute if score @s orange.time_stealing.duration matches ..0 run return run function orange:time_stealing/clear
function orange:time_stealing/effect
scoreboard players reset $time_stealing.cmd_attacker orange.arg
return 1
