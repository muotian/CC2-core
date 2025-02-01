execute store result score $find orange.timeless_lily_pad.id run data get storage orange:timeless_lily_pad fix.candidate[-1].components.minecraft:custom_data.orange.serial
scoreboard players set $found orange.temp 0
execute at @s as @e[type=minecraft:item,tag=orange.timeless_lily_pad,distance=0..] if score @s orange.timeless_lily_pad.id = $find orange.timeless_lily_pad.id run scoreboard players set $found orange.temp 1
execute if score $found orange.temp matches 0 run function orange:timeless_lily_pad/fix/found
data remove storage orange:timeless_lily_pad fix.candidate[-1]
execute if data storage orange:timeless_lily_pad fix.candidate[] run function cooldown:_system/expire/find
