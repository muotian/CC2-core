execute store result score $target cooldown.time run data get storage cooldown:expire candidate[-1].components.minecraft:custom_data.cooldown.target
execute if score $target cooldown.time matches 0.. if score $target cooldown.time <= $gametime cooldown.time run function cooldown:_system/expire/found
data remove storage cooldown:expire candidate[-1]
execute if data storage cooldown:expire candidate[] run function cooldown:_system/expire/find
