execute if score $valid orange.temp matches 1 run item replace entity @s weapon.offhand from entity cc2-0-0-0-2 contents
execute if score $valid orange.temp matches 0 run loot replace entity @s weapon.offhand loot orange:item/time_stealing_potion
item modify entity @s weapon.offhand orange:time_stealing_potion.cooldown
function cooldown:start_item_cooldown {slot:"weapon.offhand"}
scoreboard players set $valid orange.temp 0
