function cc2:load_player_storage

execute store result score $mainhand orange.temp if items entity @s weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{orange:{id:"time_stealing_potion.placeholder"}}]
execute store result score $offhand orange.temp if items entity @s weapon.offhand minecraft:poisonous_potato[minecraft:custom_data~{orange:{id:"time_stealing_potion.placeholder"}}]

data modify entity cc2-0-0-0-2 item set from storage cc2:player_storage root.orange.time_stealing_potion

execute if score $mainhand orange.temp matches 1 run item replace entity @s weapon.mainhand from entity cc2-0-0-0-2 contents
execute if score $offhand orange.temp matches 1 run item replace entity @s weapon.offhand from entity cc2-0-0-0-2 contents
execute if score $mainhand orange.temp matches 1 run item modify entity @s weapon.mainhand orange:time_stealing_potion.cooldown
execute if score $offhand orange.temp matches 1 run item modify entity @s weapon.offhand orange:time_stealing_potion.cooldown
execute if score $mainhand orange.temp matches 1 run function cooldown:start_item_cooldown {slot:"weapon.mainhand"}
execute if score $offhand orange.temp matches 1 run function cooldown:start_item_cooldown {slot:"weapon.offhand"}

data remove storage cc2:player_storage root.orange.time_stealing_potion

function cc2:save_player_storage

advancement revoke @s only orange:time_stealing_potion_used
