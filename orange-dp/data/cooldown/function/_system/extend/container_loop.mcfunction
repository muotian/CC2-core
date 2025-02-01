$item replace entity cc2-0-0-0-2 contents from entity @s container.$(slot)
execute store result score $target cooldown.time run data get entity cc2-0-0-0-2 item.components.minecraft:custom_data.cooldown.target
scoreboard players operation $target cooldown.time += $off_time cooldown.time

scoreboard players operation $duration cooldown.time = $target cooldown.time
scoreboard players operation $duration cooldown.time -= $gametime cooldown.time

scoreboard players operation $modulo cooldown.time = $target cooldown.time
scoreboard players operation $modulo cooldown.time %= #12000 cooldown.number

scoreboard players operation $data cooldown.time = $length cooldown.time
scoreboard players operation $data cooldown.time *= #16384 cooldown.number
scoreboard players operation $data cooldown.time += $modulo cooldown.time

$data modify storage cooldown:macro root set value {slot:"container.$(slot)",duration:0,target:0,data:0}

execute store result storage cooldown:macro root.duration int 1 run scoreboard players get $duration cooldown.time
execute store result storage cooldown:macro root.target int 1 run scoreboard players get $target cooldown.time
execute store result storage cooldown:macro root.data int 1 run scoreboard players get $data cooldown.time

function cooldown:_system/start/modify with storage cooldown:macro root

data remove storage cooldown:end container[-1]
data modify storage cooldown:end macro.slot set from storage cooldown:end container[-1]
execute if data storage cooldown:end container[] run function cooldown:_system/end/container_loop with storage cooldown:end macro
