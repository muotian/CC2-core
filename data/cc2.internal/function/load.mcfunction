# Chunk related utility
forceload add 0 0 -1 -1
function cc2.internal:forceload_chunk_load

# General scores
scoreboard objectives add number dummy "Numbers"
scoreboard objectives add cc2 dummy "CC2 env"

# Player tracker / storage manager
scoreboard objectives add cc2.score_id dummy
execute unless score #new_score_id cc2 matches 0.. run scoreboard players set #new_score_id cc2 1
execute unless score #loaded_player_storage cc2 matches 0.. run scoreboard players set #loaded_player_storage cc2 0
execute unless score #loaded_player_nbt cc2 matches 0.. run scoreboard players set #loaded_player_nbt cc2 0

# Player NBT score
scoreboard objectives add cc2.health dummy "[Player] Health (1000x)"
scoreboard objectives add cc2.absorption dummy "[Player] AbsorptionAmount (1000x)"
scoreboard objectives add cc2.selected_slot dummy "[Player] SelectedItemSlot"

# Tag scores
scoreboard objectives add cc2.dummy_mob dummy "[Mark] Not of type"
scoreboard objectives add cc2.not_mob dummy "[Mark] Not a mob"

# Storage
execute unless data storage cc2.internal:player_storage_base root run data modify storage cc2.internal:player_storage_base root set value {}
