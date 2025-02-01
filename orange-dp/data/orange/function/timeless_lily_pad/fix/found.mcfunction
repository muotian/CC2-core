execute store result score $slot orange.temp run data get storage orange:timeless_lily_pad fix.candidate[-1].Slot
execute if score $slot orange.temp matches 0..35 run return run data modify storage orange:timeless_lily_pad fix.container append from storage orange:timeless_lily_pad fix.candidate[-1].Slot
execute if score $slot orange.temp matches -106 run return run function orange:timeless_lily_pad/fix/specified {slot:"weapon.offhand"}
execute if score $slot orange.temp matches 100 run return run function orange:timeless_lily_pad/fix/specified {slot:"armor.feet"}
execute if score $slot orange.temp matches 101 run return run function orange:timeless_lily_pad/fix/specified {slot:"armor.legs"}
execute if score $slot orange.temp matches 102 run return run function orange:timeless_lily_pad/fix/specified {slot:"armor.chest"}
execute if score $slot orange.temp matches 103 run return run function orange:timeless_lily_pad/fix/specified {slot:"armor.head"}
