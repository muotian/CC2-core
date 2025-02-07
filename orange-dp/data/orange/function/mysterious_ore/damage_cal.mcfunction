scoreboard players set $damage orange.temp 2
execute if score @s orange.time_stealing.level matches 1.. run scoreboard players operation $add_damage orange.temp = @s orange.time_stealing.level
execute unless score @s orange.time_stealing.level matches 1.. run scoreboard players operation $add_damage orange.temp = @s orange.time_stealing.level_rev
scoreboard players operation $add_damage orange.temp *= #5 number
scoreboard players operation $damage orange.temp += $add_damage orange.temp

data modify storage orange:macro root set value {damage:0}
execute store result storage orange:macro root.damage float 0.5 run scoreboard players get $damage orange.temp
function orange:mysterious_ore/damage with storage orange:macro root
