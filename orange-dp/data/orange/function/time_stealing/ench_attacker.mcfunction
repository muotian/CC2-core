execute unless score @s orange.time_stealing.level matches ..-1 run scoreboard players add @s orange.time_stealing.level 1
execute if score @s orange.time_stealing.level matches ..-1 run scoreboard players add @s orange.time_stealing.level 2
execute if score @s orange.time_stealing.level matches 1.. run scoreboard players set @s orange.time_stealing.duration 100
execute if score @s orange.time_stealing.level matches ..-1 run scoreboard players remove @s orange.time_stealing.duration 40
execute if score @s orange.time_stealing.level matches 6.. run scoreboard players set @s orange.time_stealing.level 5
execute if score @s orange.time_stealing.duration matches ..0 run return run function orange:time_stealing/clear
function orange:time_stealing/effect
