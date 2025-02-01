scoreboard players add @s orange.timeless_lily_pad.charge_time 1

execute unless score @s orange.timeless_lily_pad.charging_slot matches -1..1 if items entity @s weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{orange:{id:"timeless_lily_pad",mode:"default"}}] run scoreboard players set @s orange.timeless_lily_pad.charging_slot 1
execute unless score @s orange.timeless_lily_pad.charging_slot matches -1..1 if items entity @s weapon.offhand minecraft:poisonous_potato[minecraft:custom_data~{orange:{id:"timeless_lily_pad",mode:"default"}}] run scoreboard players set @s orange.timeless_lily_pad.charging_slot -1
