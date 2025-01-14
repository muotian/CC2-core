execute as @a store result score @s orange.is_sprinting if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{flags:{is_sprinting:true}}}

execute as @e[scores={orange.time_stealing.duration=1..}] at @s run function orange:time_stealing/particle
execute as @e[scores={orange.time_stealing.duration=1}] run function orange:time_stealing/clear
scoreboard players remove @e[scores={orange.time_stealing.duration=1..}] orange.time_stealing.duration 1
scoreboard players reset @e[scores={orange.time_stealing.duration=0}] orange.time_stealing.duration
