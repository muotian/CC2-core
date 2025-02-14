tag @s add orange.timeless_lily_pad.this
scoreboard players set $valid orange.temp 0
execute store result storage orange:macro root.serial int 1 run scoreboard players get @s orange.timeless_lily_pad.id
execute at @s on origin run function orange:timeless_lily_pad/check_inv with storage orange:macro root
execute on origin at @s unless entity @e[type=minecraft:item,tag=orange.timeless_lily_pad.this,distance=0..] run scoreboard players set $valid orange.temp 0
execute if score $valid orange.temp matches 0 on origin run function orange:timeless_lily_pad/unstable
execute if score $valid orange.temp matches 0 run return run function orange:timeless_lily_pad/delete

execute on origin run tag @s add orange.timeless_lily_pad.thrower
execute on origin run tag @s add orange.time_stealing.attacker
scoreboard players operation $add_damage orange.temp = @s orange.timeless_lily_pad.add_damage
execute at @s positioned ~-0.5 ~-0.25 ~-0.5 as @e[type=#orange:lily_pad_damagable,dx=0,dy=0,dz=0,tag=!orange.timeless_lily_pad.thrower] run function orange:timeless_lily_pad/damage_cal

execute as @s[tag=!orange.timeless_lily_pad.returning] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{movement:{speed:{max:5}}}} run function orange:timeless_lily_pad/return
execute as @s[tag=orange.timeless_lily_pad.returning] run function orange:timeless_lily_pad/returning

tag @a[tag=orange.time_stealing.attacker] remove orange.time_stealing.attacker
tag @a[tag=orange.timeless_lily_pad.thrower] remove orange.timeless_lily_pad.thrower
tag @s remove orange.timeless_lily_pad.this
