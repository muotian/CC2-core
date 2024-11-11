execute if predicate cc2.internal:player run clear @s *[custom_data~{cc2:{unobtainable: {}}}]

function cc2:load_player_nbt
execute store result score @s cc2.health run data get storage cc2:player_nbt root.Health 1000
execute store result score @s cc2.absorption run data get storage cc2:player_nbt root.AbsorptionAmount 1000
execute store result score @s cc2.selected_slot run data get storage cc2:player_nbt root.SelectedItemSlot
function #cc2:load_player_nbt_score
