scoreboard players operation $off_time cooldown.time = $gametime cooldown.time
scoreboard players operation $off_time cooldown.time -= @s cooldown.player_time

scoreboard players set @s cooldown.ignore 1
execute if items entity @s player.cursor *[minecraft:custom_data~{cooldown:{active:1b}}] run function cooldown:_system/extend/specified {slot:"player.cursor"}
execute if items entity @s weapon.offhand *[minecraft:custom_data~{cooldown:{active:1b}}] run function cooldown:_system/extend/specified {slot:"weapon.offhand"}
execute if items entity @s player.crafting.0 *[minecraft:custom_data~{cooldown:{active:1b}}] run function cooldown:_system/extend/specified {slot:"player.crafting.0"}
execute if items entity @s player.crafting.1 *[minecraft:custom_data~{cooldown:{active:1b}}] run function cooldown:_system/extend/specified {slot:"player.crafting.1"}
execute if items entity @s player.crafting.2 *[minecraft:custom_data~{cooldown:{active:1b}}] run function cooldown:_system/extend/specified {slot:"player.crafting.2"}
execute if items entity @s player.crafting.3 *[minecraft:custom_data~{cooldown:{active:1b}}] run function cooldown:_system/extend/specified {slot:"player.crafting.3"}
execute if items entity @s armor.head *[minecraft:custom_data~{cooldown:{active:1b}}] run function cooldown:_system/extend/specified {slot:"armor.head"}
execute if items entity @s armor.chest *[minecraft:custom_data~{cooldown:{active:1b}}] run function cooldown:_system/extend/specified {slot:"armor.chest"}
execute if items entity @s armor.legs *[minecraft:custom_data~{cooldown:{active:1b}}] run function cooldown:_system/extend/specified {slot:"armor.leg"}
execute if items entity @s armor.feet *[minecraft:custom_data~{cooldown:{active:1b}}] run function cooldown:_system/extend/specified {slot:"armor.feet"}
execute if items entity @s container.* *[minecraft:custom_data~{cooldown:{active:1b}}] run function cooldown:_system/extend/container
scoreboard players reset @s cooldown.ignore
