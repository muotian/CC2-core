advancement revoke @s only orange:energy_relay.using

playsound orange:enchant.time_stealing.hit player @a ~ ~ ~
scoreboard players set @s orange.time_stealing.duration 200
function orange:time_stealing/effect

scoreboard players set $weapon_slot orange.temp 0
execute if items entity @s weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{orange:{id:"energy_relay",mode:"charged"}}] run scoreboard players set $weapon_slot orange.temp 1
execute if score $weapon_slot orange.temp matches 0 if items entity @s weapon.offhand minecraft:poisonous_potato[minecraft:custom_data~{orange:{id:"energy_relay",mode:"charged"}}] run scoreboard players set $weapon_slot orange.temp -1

execute if score $weapon_slot orange.temp matches 1 if items entity @s weapon.mainhand minecraft:poisonous_potato[minecraft:damage=99] run return run item modify entity @s weapon.mainhand orange:energy_relay.depleted
execute if score $weapon_slot orange.temp matches -1 if items entity @s weapon.offhand minecraft:poisonous_potato[minecraft:damage=99] run return run item modify entity @s weapon.offhand orange:energy_relay.depleted

execute if score $weapon_slot orange.temp matches 1 run item modify entity @s weapon.mainhand orange:energy_relay.charging
execute if score $weapon_slot orange.temp matches -1 run item modify entity @s weapon.offhand orange:energy_relay.charging
execute if score $weapon_slot orange.temp matches 1 run function cooldown:start_item_cooldown {slot:"weapon.mainhand"}
execute if score $weapon_slot orange.temp matches -1 run function cooldown:start_item_cooldown {slot:"weapon.offhand"}
