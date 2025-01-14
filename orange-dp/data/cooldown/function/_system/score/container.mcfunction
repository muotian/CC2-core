data modify storage cooldown:score container set value []
$data modify storage cooldown:score container append from entity @s Inventory[{components:{"minecraft:custom_data":{cooldown:{objective:$(objective)}}}}].Slot
data modify storage cooldown:score macro set value {slot:0}
data modify storage cooldown:score macro.slot set from storage cooldown:score container[-1]
execute if data storage cooldown:score container[] run function cooldown:_system/score/container_loop with storage cooldown:score macro
