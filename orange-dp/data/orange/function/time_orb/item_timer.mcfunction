execute unless score @s orange.time_orb matches 0.. run data modify entity @s Glowing set value 1b
execute unless score @s orange.time_orb matches 0.. run scoreboard players set @s orange.time_orb 200
execute if score @s orange.time_orb matches 180.. rotated ~36 0 run particle minecraft:dust{color:[0.6666667, 0.5, 0.75],scale:0.5} ^ ^ ^0.5 0.0 0.0 0.0 10000000000000 0 normal
execute if score @s orange.time_orb matches 160.. rotated ~72 0 run particle minecraft:dust{color:[0.6666667, 0.5, 0.75],scale:0.5} ^ ^ ^0.5 0.0 0.0 0.0 10000000000000 0 normal
execute if score @s orange.time_orb matches 140.. rotated ~108 0 run particle minecraft:dust{color:[0.6666667, 0.5, 0.75],scale:0.5} ^ ^ ^0.5 0.0 0.0 0.0 10000000000000 0 normal
execute if score @s orange.time_orb matches 120.. rotated ~144 0 run particle minecraft:dust{color:[0.6666667, 0.5, 0.75],scale:0.5} ^ ^ ^0.5 0.0 0.0 0.0 10000000000000 0 normal
execute if score @s orange.time_orb matches 100.. rotated ~180 0 run particle minecraft:dust{color:[0.6666667, 0.5, 0.75],scale:0.5} ^ ^ ^0.5 0.0 0.0 0.0 10000000000000 0 normal
execute if score @s orange.time_orb matches 80.. rotated ~216 0 run particle minecraft:dust{color:[0.6666667, 0.5, 0.75],scale:0.5} ^ ^ ^0.5 0.0 0.0 0.0 10000000000000 0 normal
execute if score @s orange.time_orb matches 60.. rotated ~252 0 run particle minecraft:dust{color:[0.6666667, 0.5, 0.75],scale:0.5} ^ ^ ^0.5 0.0 0.0 0.0 10000000000000 0 normal
execute if score @s orange.time_orb matches 40.. rotated ~288 0 run particle minecraft:dust{color:[0.6666667, 0.5, 0.75],scale:0.5} ^ ^ ^0.5 0.0 0.0 0.0 10000000000000 0 normal
execute if score @s orange.time_orb matches 20.. rotated ~324 0 run particle minecraft:dust{color:[0.6666667, 0.5, 0.75],scale:0.5} ^ ^ ^0.5 0.0 0.0 0.0 10000000000000 0 normal
execute rotated ~ 0 run particle minecraft:dust{color:[0.6666667, 0.5, 0.75],scale:0.5} ^ ^ ^0.5 0.0 0.0 0.0 10000000000000 0 normal
execute run particle minecraft:reverse_portal ~ ~ ~ 0.1 0.1 0.1 0.5 1 normal
execute if score @s orange.time_orb matches 0 run kill @s
scoreboard players remove @s orange.time_orb 1
