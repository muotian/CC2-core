execute unless predicate orange:has_vehicle run return run kill @s
scoreboard players set $player_origin orange.temp -1
execute on vehicle on origin run tag @s add orange.time_stealing.attacker
execute on vehicle on origin if entity @s[type=minecraft:player] run scoreboard players set $player_origin orange.temp 1
scoreboard players set $affected_count orange.temp 0
execute at @s positioned ~-7.0 ~-0.5 ~-7.0 as @e[dx=13,dz=13,predicate=orange:is_affected_by_time_stealing,tag=!orange.time_stealing.attacker] if function orange:time_stealing_potion/affected run scoreboard players add $affected_count orange.temp 1
execute if score $affected_count orange.temp matches 1.. on vehicle on origin run scoreboard players operation $time_stealing.cmd_attacker orange.arg = $affected_count orange.temp
execute if score $affected_count orange.temp matches 1.. on vehicle on origin run function orange:time_stealing/cmd_attacker
execute on vehicle on origin run tag @s remove orange.time_stealing.attacker
