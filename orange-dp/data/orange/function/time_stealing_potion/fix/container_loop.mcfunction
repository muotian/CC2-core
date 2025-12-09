$execute if score $valid orange.temp matches 1 run item replace entity @s container.$(slot) from entity cc2-0-0-0-2 contents
$execute if score $valid orange.temp matches 0 run loot replace entity @s container.$(slot) loot orange:item/time_stealing_potion
$item modify entity @s container.$(slot) orange:time_stealing_potion.cooldown
$function cooldown:start_item_cooldown {slot:"container.$(slot)"}
scoreboard players set $valid orange.temp 0

data remove storage orange:macro temp.placeholders[-1]
data modify storage orange:macro root.slot set from storage orange:macro temp.placeholders[-1]
execute if data storage orange:macro temp.placeholders[] run function orange:time_stealing_potion/fix/container_loop with storage orange:macro root
