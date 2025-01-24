scoreboard players set @s orange.misc.has_been_shot 1
scoreboard players set $from_time_witch orange.temp 0
execute on origin as @s[type=minecraft:witch,tag=orange.mob.time_witch] run scoreboard players set $from_time_witch orange.temp 1
execute if score $from_time_witch orange.temp matches 1 run function orange:mob/time_witch/thrown_potions
