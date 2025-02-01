$execute store success score $hurt orange.temp run damage @s $(damage) orange:lily_pad by @e[limit=1,type=minecraft:item,tag=orange.timeless_lily_pad.this] from @a[limit=1,tag=orange.timeless_lily_pad.thrower]
execute unless score $hurt orange.temp matches 1 run return 0
execute if score @s orange.time_stealing.duration matches 1.. at @s run particle minecraft:enchanted_hit ~ ~0.8 ~ 0.05 0.1 0.05 1 40 normal
execute if function orange:time_stealing/cmd_victim as @a[limit=1,tag=orange.timeless_lily_pad.thrower] run function orange:time_stealing/cmd_attacker
