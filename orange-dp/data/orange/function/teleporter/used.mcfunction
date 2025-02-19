advancement revoke @s only orange:teleporter.using

function cc2:load_player_storage

data modify storage cc2:player_storage root.orange.teleporter set value {posX:0d,posY:0d,posZ:0d,rotX:0f,rotY:0f}
data modify storage cc2:player_storage root.orange.teleporter.posX set from entity @s Pos[0]
data modify storage cc2:player_storage root.orange.teleporter.posY set from entity @s Pos[1]
data modify storage cc2:player_storage root.orange.teleporter.posZ set from entity @s Pos[2]
data modify storage cc2:player_storage root.orange.teleporter.rotX set from entity @s Rotation[0]
data modify storage cc2:player_storage root.orange.teleporter.rotY set from entity @s Rotation[1]

function cc2:save_player_storage

tp @s @e[limit=1,type=minecraft:marker,tag=orange.teleporter.receiver]
execute at @s run playsound minecraft:entity.player.teleport player @a ~ ~ ~
execute at @s run particle minecraft:portal ~ ~1 ~ 0.1 0.3 0.1 1 100 force @a

scoreboard players set $weapon_slot orange.temp 0
execute if items entity @s weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{orange:{id:"teleporter",mode:"default"}}] run scoreboard players set $weapon_slot orange.temp 1
execute if score $weapon_slot orange.temp matches 0 if items entity @s weapon.offhand minecraft:poisonous_potato[minecraft:custom_data~{orange:{id:"teleporter",mode:"default"}}] run scoreboard players set $weapon_slot orange.temp -1

execute if score $weapon_slot orange.temp matches 1 run function cooldown:start_item_cooldown {slot:"weapon.mainhand"}
execute if score $weapon_slot orange.temp matches -1 run function cooldown:start_item_cooldown {slot:"weapon.offhand"}
