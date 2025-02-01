scoreboard players set $valid orange.temp 1
execute on vehicle at @s facing entity @a[limit=1,tag=orange.timeless_lily_pad.thrower] eyes run tp @s ^ ^ ^0.5
execute as @a[limit=1,tag=orange.timeless_lily_pad.thrower] at @s anchored eyes positioned ^ ^ ^ if entity @e[limit=1,type=minecraft:item,tag=orange.timeless_lily_pad.this,distance=0..0.5] run function orange:timeless_lily_pad/returned with storage orange:macro root
execute if score $valid orange.temp matches 0 run function orange:timeless_lily_pad/delete
