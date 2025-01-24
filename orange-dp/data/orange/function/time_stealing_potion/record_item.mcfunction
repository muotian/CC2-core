execute if items entity @s weapon.mainhand minecraft:lingering_potion[minecraft:custom_data~{orange:{id:"time_stealing_potion"}}] run item replace entity cc2-0-0-0-2 contents from entity @s weapon.mainhand
execute unless items entity @s weapon.mainhand minecraft:lingering_potion[minecraft:custom_data~{orange:{id:"time_stealing_potion"}}] run item replace entity cc2-0-0-0-2 contents from entity @s weapon.offhand

function cc2:load_player_storage

data modify storage cc2:player_storage root.orange.time_stealing_potion set from entity cc2-0-0-0-2 item

function cc2:save_player_storage
