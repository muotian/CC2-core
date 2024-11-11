execute unless score #loaded_player_nbt cc2 matches 1.. run return fail

execute store result storage cc2.internal:macro root.index int 1 run scoreboard players get #loaded_player_storage cc2
function cc2.internal:storage_manager/save_macro with storage cc2.internal:macro root
