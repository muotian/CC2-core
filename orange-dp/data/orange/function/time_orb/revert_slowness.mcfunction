data modify storage orange:macro root set value {"effect":"speed","amplifier":0b,"duration":0}
execute store result storage orange:macro root.amplifier int 0.5 run scoreboard players get @s orange.effects.slowness.amplifier
execute store result storage orange:macro root.duration int 0.05 run scoreboard players get @s orange.effects.slowness.duration
execute if score @s orange.effects.slowness.duration matches -1 run data modify storage orange:macro root.duration set value "infinite"
function orange:time_orb/effect_macro with storage orange:macro root
