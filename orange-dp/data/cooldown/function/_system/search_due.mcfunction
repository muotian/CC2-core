scoreboard players set @s cooldown.ignore 1
$execute if items entity @s player.cursor *[minecraft:custom_data~{cooldown:{target:$(time)}}] run function cooldown:_system/end/specified {slot:"player.cursor"}
$execute if items entity @s weapon.offhand *[minecraft:custom_data~{cooldown:{target:$(time)}}] run function cooldown:_system/end/specified {slot:"weapon.offhand"}
$execute if items entity @s player.crafting.0 *[minecraft:custom_data~{cooldown:{target:$(time)}}] run function cooldown:_system/end/specified {slot:"player.crafting.0"}
$execute if items entity @s player.crafting.1 *[minecraft:custom_data~{cooldown:{target:$(time)}}] run function cooldown:_system/end/specified {slot:"player.crafting.1"}
$execute if items entity @s player.crafting.2 *[minecraft:custom_data~{cooldown:{target:$(time)}}] run function cooldown:_system/end/specified {slot:"player.crafting.2"}
$execute if items entity @s player.crafting.3 *[minecraft:custom_data~{cooldown:{target:$(time)}}] run function cooldown:_system/end/specified {slot:"player.crafting.3"}
$execute if items entity @s armor.head *[minecraft:custom_data~{cooldown:{target:$(time)}}] run function cooldown:_system/end/specified {slot:"armor.head"}
$execute if items entity @s armor.chest *[minecraft:custom_data~{cooldown:{target:$(time)}}] run function cooldown:_system/end/specified {slot:"armor.chest"}
$execute if items entity @s armor.legs *[minecraft:custom_data~{cooldown:{target:$(time)}}] run function cooldown:_system/end/specified {slot:"armor.leg"}
$execute if items entity @s armor.feet *[minecraft:custom_data~{cooldown:{target:$(time)}}] run function cooldown:_system/end/specified {slot:"armor.feet"}
$execute if items entity @s container.* *[minecraft:custom_data~{cooldown:{target:$(time)}}] run function cooldown:_system/end/container with storage cooldown:macro root
scoreboard players reset @s cooldown.ignore
