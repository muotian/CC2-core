execute store result score $slot cooldown.number run data get storage cooldown:expire candidate[-1].Slot
execute if score $slot cooldown.number matches 0..35 run return run data modify storage cooldown:end container append from storage cooldown:expire candidate[-1].Slot
execute if score $slot cooldown.number matches -106 run return run function cooldown:_system/end/specified {slot:"weapon.offhand"}
execute if score $slot cooldown.number matches 100 run return run function cooldown:_system/end/specified {slot:"armor.feet"}
execute if score $slot cooldown.number matches 101 run return run function cooldown:_system/end/specified {slot:"armor.legs"}
execute if score $slot cooldown.number matches 102 run return run function cooldown:_system/end/specified {slot:"armor.chest"}
execute if score $slot cooldown.number matches 103 run return run function cooldown:_system/end/specified {slot:"armor.head"}
