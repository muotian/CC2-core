function cc2:load_player_storage
execute unless data storage cc2:player_storage root.orange.teleporter run return 0
function orange:teleporter/return_macro with storage cc2:player_storage root.orange.teleporter
execute at @s run playsound minecraft:entity.player.teleport player @a ~ ~ ~
execute at @s run particle minecraft:portal ~ ~1 ~ 0.1 0.3 0.1 1 100 force @a
