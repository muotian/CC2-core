scoreboard players set $valid orange.temp 0
$execute if items entity @s player.cursor minecraft:poisonous_potato[minecraft:custom_data~{orange:{id:"timeless_lily_pad",serial:$(serial)}}] run function orange:timeless_lily_pad/modify/specified {slot:"player.cursor"}
$execute if items entity @s weapon.offhand minecraft:poisonous_potato[minecraft:custom_data~{orange:{id:"timeless_lily_pad",serial:$(serial)}}] run function orange:timeless_lily_pad/modify/specified {slot:"weapon.offhand"}
$execute if items entity @s player.crafting.0 minecraft:poisonous_potato[minecraft:custom_data~{orange:{id:"timeless_lily_pad",serial:$(serial)}}] run function orange:timeless_lily_pad/modify/specified {slot:"player.crafting.0"}
$execute if items entity @s player.crafting.1 minecraft:poisonous_potato[minecraft:custom_data~{orange:{id:"timeless_lily_pad",serial:$(serial)}}] run function orange:timeless_lily_pad/modify/specified {slot:"player.crafting.1"}
$execute if items entity @s player.crafting.2 minecraft:poisonous_potato[minecraft:custom_data~{orange:{id:"timeless_lily_pad",serial:$(serial)}}] run function orange:timeless_lily_pad/modify/specified {slot:"player.crafting.2"}
$execute if items entity @s player.crafting.3 minecraft:poisonous_potato[minecraft:custom_data~{orange:{id:"timeless_lily_pad",serial:$(serial)}}] run function orange:timeless_lily_pad/modify/specified {slot:"player.crafting.3"}
$execute if items entity @s armor.head minecraft:poisonous_potato[minecraft:custom_data~{orange:{id:"timeless_lily_pad",serial:$(serial)}}] run function orange:timeless_lily_pad/modify/specified {slot:"armor.head"}
$execute if items entity @s armor.chest minecraft:poisonous_potato[minecraft:custom_data~{orange:{id:"timeless_lily_pad",serial:$(serial)}}] run function orange:timeless_lily_pad/modify/specified {slot:"armor.chest"}
$execute if items entity @s armor.legs minecraft:poisonous_potato[minecraft:custom_data~{orange:{id:"timeless_lily_pad",serial:$(serial)}}] run function orange:timeless_lily_pad/modify/specified {slot:"armor.leg"}
$execute if items entity @s armor.feet minecraft:poisonous_potato[minecraft:custom_data~{orange:{id:"timeless_lily_pad",serial:$(serial)}}] run function orange:timeless_lily_pad/modify/specified {slot:"armor.feet"}
$execute if items entity @s container.* minecraft:poisonous_potato[minecraft:custom_data~{orange:{id:"timeless_lily_pad",serial:$(serial)}}] run function orange:timeless_lily_pad/modify/container with storage orange:macro root
execute at @s run playsound minecraft:entity.item.pickup player @a ~ ~ ~ 0.2 2
