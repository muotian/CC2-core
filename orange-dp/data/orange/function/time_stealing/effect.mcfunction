attribute @s minecraft:attack_speed modifier remove orange:time_stealing
attribute @s minecraft:block_break_speed modifier remove orange:time_stealing
attribute @s minecraft:movement_speed modifier remove orange:time_stealing

scoreboard players operation @s orange.time_stealing.level_rev = @s orange.time_stealing.level
scoreboard players operation @s orange.time_stealing.level_rev *= #-1 number

execute if score @s orange.time_stealing.level matches 0 run execute as @s[type=minecraft:player] run function orange:time_stealing/actionbar_clear
execute if score @s orange.time_stealing.level matches 0 run scoreboard players reset @s orange.time_stealing.duration
execute if score @s orange.time_stealing.level matches 0 run return run scoreboard players reset @s orange.time_stealing.level

execute if score @s orange.time_stealing.level matches -5 run attribute @s minecraft:attack_speed modifier add orange:time_stealing -0.50 add_multiplied_total
execute if score @s orange.time_stealing.level matches -5 run attribute @s minecraft:block_break_speed modifier add orange:time_stealing -0.60 add_multiplied_total
execute if score @s orange.time_stealing.level matches -5 run attribute @s minecraft:movement_speed modifier add orange:time_stealing -0.75 add_multiplied_total

execute if score @s orange.time_stealing.level matches -4 run attribute @s minecraft:attack_speed modifier add orange:time_stealing -0.40 add_multiplied_total
execute if score @s orange.time_stealing.level matches -4 run attribute @s minecraft:block_break_speed modifier add orange:time_stealing -0.48 add_multiplied_total
execute if score @s orange.time_stealing.level matches -4 run attribute @s minecraft:movement_speed modifier add orange:time_stealing -0.60 add_multiplied_total

execute if score @s orange.time_stealing.level matches -3 run attribute @s minecraft:attack_speed modifier add orange:time_stealing -0.30 add_multiplied_total
execute if score @s orange.time_stealing.level matches -3 run attribute @s minecraft:block_break_speed modifier add orange:time_stealing -0.36 add_multiplied_total
execute if score @s orange.time_stealing.level matches -3 run attribute @s minecraft:movement_speed modifier add orange:time_stealing -0.45 add_multiplied_total

execute if score @s orange.time_stealing.level matches -2 run attribute @s minecraft:attack_speed modifier add orange:time_stealing -0.20 add_multiplied_total
execute if score @s orange.time_stealing.level matches -2 run attribute @s minecraft:block_break_speed modifier add orange:time_stealing -0.24 add_multiplied_total
execute if score @s orange.time_stealing.level matches -2 run attribute @s minecraft:movement_speed modifier add orange:time_stealing -0.30 add_multiplied_total

execute if score @s orange.time_stealing.level matches -1 run attribute @s minecraft:attack_speed modifier add orange:time_stealing -0.10 add_multiplied_total
execute if score @s orange.time_stealing.level matches -1 run attribute @s minecraft:block_break_speed modifier add orange:time_stealing -0.12 add_multiplied_total
execute if score @s orange.time_stealing.level matches -1 run attribute @s minecraft:movement_speed modifier add orange:time_stealing -0.15 add_multiplied_total

execute if score @s orange.time_stealing.level matches 1 run attribute @s minecraft:attack_speed modifier add orange:time_stealing 0.02 add_multiplied_total
execute if score @s orange.time_stealing.level matches 1 run attribute @s minecraft:block_break_speed modifier add orange:time_stealing 0.04 add_multiplied_total
execute if score @s orange.time_stealing.level matches 1 run attribute @s minecraft:movement_speed modifier add orange:time_stealing 0.06 add_multiplied_total

execute if score @s orange.time_stealing.level matches 2 run attribute @s minecraft:attack_speed modifier add orange:time_stealing 0.04 add_multiplied_total
execute if score @s orange.time_stealing.level matches 2 run attribute @s minecraft:block_break_speed modifier add orange:time_stealing 0.08 add_multiplied_total
execute if score @s orange.time_stealing.level matches 2 run attribute @s minecraft:movement_speed modifier add orange:time_stealing 0.12 add_multiplied_total

execute if score @s orange.time_stealing.level matches 3 run attribute @s minecraft:attack_speed modifier add orange:time_stealing 0.06 add_multiplied_total
execute if score @s orange.time_stealing.level matches 3 run attribute @s minecraft:block_break_speed modifier add orange:time_stealing 0.12 add_multiplied_total
execute if score @s orange.time_stealing.level matches 3 run attribute @s minecraft:movement_speed modifier add orange:time_stealing 0.18 add_multiplied_total

execute if score @s orange.time_stealing.level matches 4 run attribute @s minecraft:attack_speed modifier add orange:time_stealing 0.08 add_multiplied_total
execute if score @s orange.time_stealing.level matches 4 run attribute @s minecraft:block_break_speed modifier add orange:time_stealing 0.16 add_multiplied_total
execute if score @s orange.time_stealing.level matches 4 run attribute @s minecraft:movement_speed modifier add orange:time_stealing 0.24 add_multiplied_total

execute if score @s orange.time_stealing.level matches 5 run attribute @s minecraft:attack_speed modifier add orange:time_stealing 0.10 add_multiplied_total
execute if score @s orange.time_stealing.level matches 5 run attribute @s minecraft:block_break_speed modifier add orange:time_stealing 0.20 add_multiplied_total
execute if score @s orange.time_stealing.level matches 5 run attribute @s minecraft:movement_speed modifier add orange:time_stealing 0.30 add_multiplied_total

execute as @s[type=minecraft:player] run function orange:time_stealing/actionbar_set
