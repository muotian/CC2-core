execute unless entity @s[type=player] run return fail

execute if score @s cc2.score_id = #loaded_player_nbt cc2 run return 1
scoreboard players operation #loaded_player_nbt cc2 = @s cc2.score_id

data modify storage cc2:player_nbt root set from entity @s
