function cc2:load_player_storage

execute store result score $valid orange.temp if data storage cc2:player_storage root.orange.time_stealing_potion.components."minecraft:custom_data".orange{id:"time_stealing_potion"}
data modify entity cc2-0-0-0-2 item set from storage cc2:player_storage root.orange.time_stealing_potion

execute if items entity @s weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{orange:{id:"time_stealing_potion.placeholder"}}] run function orange:time_stealing_potion/return_mainhand
execute if items entity @s weapon.offhand minecraft:poisonous_potato[minecraft:custom_data~{orange:{id:"time_stealing_potion.placeholder"}}] run function orange:time_stealing_potion/return_offhand
execute if items entity @s container.* minecraft:poisonous_potato[minecraft:custom_data~{orange:{id:"time_stealing_potion.placeholder"}}] run function orange:time_stealing_potion/fix/container

data remove storage cc2:player_storage root.orange.time_stealing_potion

function cc2:save_player_storage

advancement revoke @s only orange:time_stealing_potion.used
