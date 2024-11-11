function cc2:load_player_storage
execute if data storage cc2:player_storage root.cc2.actionbar[] run title @s actionbar {"storage": "cc2:player_storage", "nbt": "root.cc2.actionbar[].text", "separator": "", "interpret": true}
