data modify storage cooldown:end container set value []
$data modify storage cooldown:end container append from entity @s Inventory[{components:{"minecraft:custom_data":{cooldown:{target:$(time)}}}}].Slot
data modify storage cooldown:end macro set value {slot:0}
data modify storage cooldown:end macro.slot set from storage cooldown:end container[-1]
execute if data storage cooldown:end container[] run function cooldown:_system/end/container_loop with storage cooldown:end macro
