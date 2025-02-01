scoreboard players operation @s orange.timeless_lily_pad.id = $serial orange.timeless_lily_pad.id
scoreboard players operation @s orange.timeless_lily_pad.add_damage = $add_damage orange.temp
execute on passengers run data modify entity @s Rotation set from entity @a[limit=1,tag=orange.timeless_lily_pad.thrower] Rotation
data modify entity @s Motion set from entity cc2-0-0-0-4 Pos
data modify entity @s Thrower set from entity @a[limit=1,tag=orange.timeless_lily_pad.thrower] UUID
