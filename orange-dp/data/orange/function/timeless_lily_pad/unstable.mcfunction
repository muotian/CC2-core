data modify storage orange:timeless_lily_pad fix.candidate set value []
data modify storage orange:timeless_lily_pad fix.container set value []
data modify storage orange:timeless_lily_pad fix.candidate append from entity @s Inventory[{components:{"minecraft:custom_data":{orange:{id:"timeless_lily_pad",mode:"flying"}}}}]

execute if data storage orange:timeless_lily_pad fix.candidate[] run function orange:timeless_lily_pad/fix/find
data modify storage orange:timeless_lily_pad fix.macro set value {slot:0}
data modify storage orange:timeless_lily_pad fix.macro.slot set from storage orange:timeless_lily_pad fix.container[-1]
execute if data storage orange:timeless_lily_pad fix.container[] run function orange:timeless_lily_pad/fix/container_loop with storage orange:timeless_lily_pad fix.macro

advancement revoke @s only orange:timeless_lily_pad.unstable
