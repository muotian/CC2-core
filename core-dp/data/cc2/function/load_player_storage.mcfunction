execute unless entity @s[type=player] run return fail

execute if score @s cc2.score_id = #loaded_player_storage cc2 run return 1
scoreboard players operation #loaded_player_storage cc2 = @s cc2.score_id

execute store result storage cc2.internal:macro root.index int 1 run scoreboard players get @s cc2.score_id
function cc2.internal:storage_manager/load_macro with storage cc2.internal:macro root
