execute as @s[type=#orange:boat] at @s run return run function orange:timeless_lily_pad/boat_killer
execute store result score $hurt_time orange.temp run data get entity @s HurtTime
execute if score $hurt_time orange.temp matches 1.. run return 0
scoreboard players set $damage orange.temp 7
execute if score @s orange.time_stealing.duration matches 1.. run scoreboard players operation $damage orange.temp += $add_damage orange.temp
execute store result storage orange:macro root.damage float 0.5 run scoreboard players get $damage orange.temp
function orange:timeless_lily_pad/damage with storage orange:macro root
