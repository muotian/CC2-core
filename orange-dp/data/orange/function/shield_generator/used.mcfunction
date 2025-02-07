particle minecraft:item{item:{id:"minecraft:glass"}} ~ ~1 ~ 0.3 0.6 0.3 1 50

scoreboard players set $weapon_slot orange.temp 0
execute if items entity @s weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{orange:{id:"shield_generator",mode:"charged"}}] run scoreboard players set $weapon_slot orange.temp 1
execute if score $weapon_slot orange.temp matches 0 if items entity @s weapon.offhand minecraft:poisonous_potato[minecraft:custom_data~{orange:{id:"shield_generator",mode:"charged"}}] run scoreboard players set $weapon_slot orange.temp -1

execute if score $weapon_slot orange.temp matches 1 if items entity @s weapon.mainhand minecraft:poisonous_potato[minecraft:damage=99] run return run item modify entity @s weapon.mainhand orange:shield_generator.depleted
execute if score $weapon_slot orange.temp matches -1 if items entity @s weapon.offhand minecraft:poisonous_potato[minecraft:damage=99] run return run item modify entity @s weapon.offhand orange:shield_generator.depleted

execute if score $weapon_slot orange.temp matches 1 run item modify entity @s weapon.mainhand orange:shield_generator.charging
execute if score $weapon_slot orange.temp matches -1 run item modify entity @s weapon.offhand orange:shield_generator.charging
execute if score $weapon_slot orange.temp matches 1 run function cooldown:start_item_cooldown {slot:"weapon.mainhand"}
execute if score $weapon_slot orange.temp matches -1 run function cooldown:start_item_cooldown {slot:"weapon.offhand"}
