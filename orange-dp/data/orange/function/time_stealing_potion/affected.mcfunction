execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:unluck":{duration:1}}}} run effect clear @s minecraft:unluck
scoreboard players set $player_target orange.temp -1
execute if entity @s[type=minecraft:player] run scoreboard players set $player_target orange.temp 1
execute if entity @s[type=#orange:passive] run scoreboard players set $player_target orange.temp 1
execute on owner if entity @s[type=minecraft:player] run scoreboard players set $player_target orange.temp 1
scoreboard players operation $player_target orange.temp *= $player_origin orange.temp
execute if score $player_target orange.temp matches 1 run function orange:time_stealing/cmd_attacker
execute if score $player_target orange.temp matches -1 run return run function orange:time_stealing/cmd_victim
