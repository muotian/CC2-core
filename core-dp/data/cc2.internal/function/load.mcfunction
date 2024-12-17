# Chunk related utility
forceload add 0 0 -1 -1
function cc2.internal:forceload_chunk_load

# General scores
scoreboard objectives add number dummy "Numbers"
scoreboard objectives add cc2 dummy "CC2 env"
scoreboard objectives add cc2.actionbar_active dummy "Player actionbar state"

# Player tracker / storage manager
scoreboard objectives add cc2.score_id dummy
execute unless score #new_score_id cc2 matches 0.. run scoreboard players set #new_score_id cc2 1
execute unless score #loaded_player_storage cc2 matches 0.. run scoreboard players set #loaded_player_storage cc2 0
execute unless score #loaded_player_nbt cc2 matches 0.. run scoreboard players set #loaded_player_nbt cc2 0

# Player NBT score
scoreboard objectives add cc2.health dummy "[Player] Health (1000x)"
scoreboard objectives add cc2.absorption dummy "[Player] AbsorptionAmount (1000x)"
scoreboard objectives add cc2.selected_slot dummy "[Player] SelectedItemSlot"
scoreboard objectives add cc2.pos_x dummy "[Player] Pos[0]"
scoreboard objectives add cc2.pos_y dummy "[Player] Pos[1]"
scoreboard objectives add cc2.pos_z dummy "[Player] Pos[2]"
scoreboard objectives add cc2.yaw dummy "[Player] Rotation[0]"
scoreboard objectives add cc2.pitch dummy "[Player] Rotation[1]"

# Storage
execute unless data storage cc2.internal:player_storage_base root run data modify storage cc2.internal:player_storage_base root set value {}

# Gamerule
gamerule commandBlockOutput false
gamerule doMobSpawning true
gamerule doDaylightCycle false
time set midnight
gamerule doWeatherCycle false
weather clear
gamerule spawnRadius 2
gamerule disableRaids true
gamerule doInsomnia false
gamerule doPatrolSpawning false
gamerule doTraderSpawning false
gamerule mobGriefing true
gamerule doFireTick false
gamerule maxCommandChainLength 1000000
gamerule maxCommandForkCount 1000000
#gamerule sendCommandFeedback false
