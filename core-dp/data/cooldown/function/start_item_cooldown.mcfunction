$item replace entity cc2-0-0-0-2 contents from entity @s $(slot)
data modify storage cooldown:item item set value {}
data modify storage cooldown:item item set from entity cc2-0-0-0-2 item
execute unless data storage cooldown:item item.components.minecraft:custom_data.cooldown run return 0

$data modify storage cooldown:macro root set value {slot:"$(slot)",objective:"",length:0,target:0,data:0}
data modify storage cooldown:macro root.objective set from storage cooldown:item item.components.minecraft:custom_data.cooldown.objective
data modify storage cooldown:macro root.length set from storage cooldown:item item.components.minecraft:custom_data.cooldown.length
execute store result score $length cooldown.time run data get storage cooldown:macro root.length
execute unless score $length cooldown.time matches 1..600 run return run tellraw @a {"color":"red","text":"[Cooldown] Invalid cooldown length, expected 1..600."}

execute if data storage cooldown:item item.components.minecraft:custom_data.cooldown{mode:"item"} run function cooldown:_system/start_item
execute if data storage cooldown:item item.components.minecraft:custom_data.cooldown{mode:"score"} run function cooldown:start_score_cooldown with storage cooldown:macro root
