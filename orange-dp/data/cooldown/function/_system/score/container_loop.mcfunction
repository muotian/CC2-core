$data modify storage cooldown:macro root.slot set value "container.$(slot)"
execute store result score $slot cooldown.number run data get storage cooldown:score container[-1]
execute if score $slot cooldown.number matches 0..35 run function cooldown:_system/start/modify with storage cooldown:macro root
data remove storage cooldown:score container[-1]
data modify storage cooldown:score macro.slot set from storage cooldown:score container[-1]
execute if data storage cooldown:score container[] run function cooldown:_system/score/container_loop with storage cooldown:score macro
