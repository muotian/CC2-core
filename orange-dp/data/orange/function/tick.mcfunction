execute as @a store result score @s orange.is_sprinting if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{flags:{is_sprinting:true}}}

execute as @e[type=minecraft:marker,tag=orange.spawner] at @s unless block ~ ~ ~ minecraft:spawner run kill @s

execute as @e[scores={orange.time_stealing.duration=1..}] at @s run function orange:time_stealing/particle
execute as @e[scores={orange.time_stealing.duration=1}] run function orange:time_stealing/clear
scoreboard players remove @e[scores={orange.time_stealing.duration=1..}] orange.time_stealing.duration 1
scoreboard players reset @e[scores={orange.time_stealing.duration=0}] orange.time_stealing.duration

execute as @e[scores={orange.gravity_cancelling.duration=1..}] at @s run function orange:gravity_cancelling/particle
execute as @e[scores={orange.gravity_cancelling.duration=1}] run function orange:gravity_cancelling/clear
scoreboard players remove @e[scores={orange.gravity_cancelling.duration=1..}] orange.gravity_cancelling.duration 1
scoreboard players reset @e[scores={orange.gravity_cancelling.duration=0}] orange.gravity_cancelling.duration

execute as @a[scores={orange.timeless_lily_pad.charge_time=1..},advancements={orange:timeless_lily_pad.charging=false}] run function orange:timeless_lily_pad/released
scoreboard players reset @a[scores={orange.timeless_lily_pad.charge_time=1..},advancements={orange:timeless_lily_pad.charging=false}] orange.timeless_lily_pad.charge_time
advancement revoke @a[advancements={orange:timeless_lily_pad.charging=true}] only orange:timeless_lily_pad.charging
execute as @e[type=minecraft:item,tag=orange.timeless_lily_pad] run function orange:timeless_lily_pad/flying
execute as @e[type=minecraft:item_display,tag=orange.timeless_lily_pad,predicate=orange:timeless_lily_pad_error] run function orange:timeless_lily_pad/error

execute as @e[type=minecraft:potion,predicate=!orange:has_been_shot] run function orange:new_potion
execute as @e[type=minecraft:marker,tag=orange.time_stealing_potion.flying,predicate=!orange:has_vehicle] run function orange:time_stealing_potion/detector_landed
execute as @e[type=minecraft:marker,tag=orange.time_stealing_potion.landed] run function orange:time_stealing_potion/detector_check

execute as @e[type=minecraft:fishing_bobber,tag=orange.no_gravity_rod.bobber,tag=!orange.no_gravity_rod.shot] run function orange:no_gravity_rod/shoot

execute as @e[type=minecraft:arrow,tag=orange.gravity_cancelling_arrow] at @s run function orange:gravity_cancelling/arrow_particle
execute as @e[type=minecraft:arrow,tag=orange.time_releasing_arrow] at @s run function orange:time_releasing/arrow_particle
execute as @e[type=minecraft:arrow,tag=orange.time_stealing_arrow] at @s run function orange:time_stealing/arrow_particle

execute as @e[type=minecraft:item,predicate=orange:is_dropped_mysterious_ore] at @s run function orange:mysterious_ore/radiate
execute as @e[type=minecraft:item,predicate=orange:is_dropped_time_orb] at @s positioned ~ ~0.25 ~ facing entity @p feet run function orange:time_orb/item_timer

execute as @a[scores={orange.dead=1..}] run function orange:player_dead
