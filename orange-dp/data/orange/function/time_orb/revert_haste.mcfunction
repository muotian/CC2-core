data modify storage orange:macro root set value {"effect":"mining_fatigue","amplifier":0,"duration":0}
execute store result storage orange:macro root.amplifier int 2 run scoreboard players get @s orange.effects.haste.amplifier
execute store result storage orange:macro root.duration int 0.05 run scoreboard players get @s orange.effects.haste.duration
execute if score @s orange.effects.haste.duration matches -1 run data modify storage orange:macro root.duration set value "infinite"
function orange:time_orb/effect_macro with storage orange:macro root