execute as @e[type=minecraft:magma_cube,tag=orange.mob.time_cube,predicate=!orange:has_passengers,distance=0..3] run function orange:mob/time_cube/new_hat
kill @s
