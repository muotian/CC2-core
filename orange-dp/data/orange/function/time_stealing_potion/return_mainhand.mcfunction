execute if score $valid orange.temp matches 1 run item replace entity @s weapon.mainhand from entity cc2-0-0-0-2 contents
execute if score $valid orange.temp matches 0 run loot replace entity @s weapon.mainhand loot orange:item/time_stealing_potion
item modify entity @s weapon.mainhand orange:time_stealing_potion.cooldown
function cooldown:start_item_cooldown {slot:"weapon.mainhand"}
scoreboard players set $valid orange.temp 0