execute unless predicate orange:has_vehicle at @s run return run function orange:mob/time_cube/died
execute on vehicle run tag @s add orange.mob.time_cube.vehicle
execute rotated as @e[type=minecraft:magma_cube,tag=orange.mob.time_cube.vehicle] run rotate @s ~ ~
