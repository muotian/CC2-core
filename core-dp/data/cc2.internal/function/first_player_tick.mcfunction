team join cc2.player @s
execute unless score @s cc2.score_id matches 1.. run function cc2.internal:give_score_id

execute if predicate cc2.internal:player run clear @s *[custom_data~{cc2:{unobtainable: {}}}]

function cc2:load_player_nbt
execute store result score @s cc2.health run data get storage cc2:player_nbt root.Health 1000
execute store result score @s cc2.absorption run data get storage cc2:player_nbt root.AbsorptionAmount 1000
execute store result score @s cc2.selected_slot run data get storage cc2:player_nbt root.SelectedItemSlot
execute store result score @s cc2.pos_x run data get storage cc2:player_nbt root.Pos[0]
execute store result score @s cc2.pos_y run data get storage cc2:player_nbt root.Pos[1]
execute store result score @s cc2.pos_z run data get storage cc2:player_nbt root.Pos[2]
execute store result score @s cc2.yaw run data get storage cc2:player_nbt root.Rotation[0]
execute store result score @s cc2.pitch run data get storage cc2:player_nbt root.Rotation[1]
function #cc2:load_player_nbt_score

# Gamemode manager
execute if function #cc2:is_in_adventure_zone run return run gamemode adventure @s[gamemode=survival]
gamemode survival @s[gamemode=adventure]
