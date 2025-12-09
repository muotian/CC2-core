data modify storage orange:macro temp.placeholders set value []
data modify storage orange:macro temp.placeholders append from entity @s Inventory[{components:{"minecraft:custom_data":{orange:{id:"time_stealing_potion.placeholder"}}}}]
data modify storage orange:macro root set value {slot:0}
data modify storage orange:macro root.slot set from storage orange:macro temp.placeholders[-1].Slot
execute if data storage orange:macro temp.placeholders[] run function orange:time_stealing_potion/fix/container_loop with storage orange:macro root
