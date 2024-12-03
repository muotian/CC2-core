data modify storage cooldown:extend container set value []
data modify storage cooldown:extend container append from entity @s Inventory[{components:{"minecraft:custom_data":{cooldown:{active:1b}}}}].Slot
data modify storage cooldown:extend macro set value {slot:0}
data modify storage cooldown:extend macro.slot set from storage cooldown:extend container[-1]
execute if data storage cooldown:extend container[] run function cooldown:_system/extend/container_loop with storage cooldown:extend macro
