scoreboard players reset @s orange.time_stealing.level
scoreboard players reset @s orange.time_stealing.duration
attribute @s minecraft:attack_speed modifier remove orange:time_stealing
attribute @s minecraft:movement_speed modifier remove orange:time_stealing
attribute @s minecraft:block_break_speed modifier remove orange:time_stealing
execute as @s[type=minecraft:player] run function orange:time_stealing/actionbar_clear
