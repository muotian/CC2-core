tag @s remove orange.mob.time_ranger.attacked
execute unless predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{targeted_entity:{type:"#orange:possesses_time"}}} run return 0

scoreboard players set $target_state orange.temp 0
execute on target if score @s orange.gravity_cancelling.duration matches 1.. run scoreboard players set $target_state orange.temp 1
execute on target if score @s orange.time_stealing.level matches ..-1 run scoreboard players set $target_state orange.temp 2
execute if score $target_state orange.temp matches 0 run loot replace entity @s weapon.offhand loot orange:item/gravity_cancelling_arrow
execute if score $target_state orange.temp matches 1 run loot replace entity @s weapon.offhand loot orange:item/time_stealing_arrow
execute if score $target_state orange.temp matches 2 run loot replace entity @s weapon.offhand loot orange:item/time_releasing_arrow
