function cc2:load_player_storage

data modify storage cc2:player_storage root.orange.time_stealing_potion set from storage orange:macro temp
data remove storage orange:macro temp

function cc2:save_player_storage
