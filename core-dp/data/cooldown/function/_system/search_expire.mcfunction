data modify storage cooldown:expire candidate set value []
data modify storage cooldown:end container set value []
data modify storage cooldown:expire candidate append from entity @s Inventory[{components:{"minecraft:custom_data":{cooldown:{active:1b}}}}]

execute if data storage cooldown:expire candidate[] run function cooldown:_system/expire/find
data modify storage cooldown:end macro set value {slot:0}
data modify storage cooldown:end macro.slot set from storage cooldown:end container[-1]
execute if data storage cooldown:end container[] run function cooldown:_system/end/container_loop with storage cooldown:end macro

advancement revoke @s only cooldown:got_active_cooldown
