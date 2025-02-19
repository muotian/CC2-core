function cc2:load_player_storage
execute unless data storage cc2:player_storage root.cc2.actionbar[{id: "cc2:no_format"}] run function cc2.internal:actionbar/add_no_format

scoreboard players operation #was_active cc2.actionbar_active = @s cc2.actionbar_active
execute store result score @s cc2.actionbar_active if data storage cc2:player_storage root.cc2.actionbar[]

execute if score @s cc2.actionbar_active matches 2.. run return run title @s actionbar {"storage": "cc2:player_storage", "nbt": "root.cc2.actionbar[].text", "separator": "", "interpret": true}
execute if score #was_active cc2.actionbar_active matches 2.. run title @s actionbar ""
