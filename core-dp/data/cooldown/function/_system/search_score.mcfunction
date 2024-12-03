data modify storage cooldown:score candidate set value []
$data modify storage cooldown:score candidate append from entity @s Inventory[{components:{"minecraft:custom_data":{cooldown:{objective:"$(objective)"}}}}]
$data remove storage cooldown:score candidate[{components:{"minecraft:custom_data":{cooldown:{target:$(target)}}}}]
execute unless data storage cooldown:score candidate[] run return 0

scoreboard players set @s cooldown.ignore 1
$execute if items entity @s weapon.offhand *[minecraft:custom_data~{cooldown:{objective:"$(objective)"}}] run function cooldown:_system/score/specified {slot:"weapon.offhand"}
$execute if items entity @s armor.head *[minecraft:custom_data~{cooldown:{objective:"$(objective)"}}] run function cooldown:_system/score/specified {slot:"armor.head"}
$execute if items entity @s armor.chest *[minecraft:custom_data~{cooldown:{objective:"$(objective)"}}] run function cooldown:_system/score/specified {slot:"armor.chest"}
$execute if items entity @s armor.legs *[minecraft:custom_data~{cooldown:{objective:"$(objective)"}}] run function cooldown:_system/score/specified {slot:"armor.leg"}
$execute if items entity @s armor.feet *[minecraft:custom_data~{cooldown:{objective:"$(objective)"}}] run function cooldown:_system/score/specified {slot:"armor.feet"}
$execute if items entity @s container.* *[minecraft:custom_data~{cooldown:{objective:"$(objective)"}}] run function cooldown:_system/score/container with storage cooldown:macro root
scoreboard players reset @s cooldown.ignore
