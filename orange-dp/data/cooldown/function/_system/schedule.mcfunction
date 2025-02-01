execute store result score $gametime cooldown.time run time query gametime
data modify storage cooldown:macro root set value {time:0}
execute store result storage cooldown:macro root.time int 1 run scoreboard players get $gametime cooldown.time
execute as @a[predicate=cooldown:has_active_cooldown] run function cooldown:_system/search_due with storage cooldown:macro root
