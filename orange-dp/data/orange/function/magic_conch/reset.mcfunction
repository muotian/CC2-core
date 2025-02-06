$execute unless items entity @s $(slot) minecraft:poisonous_potato[minecraft:damage=20] run item modify entity @s $(slot) orange:magic_conch.default
$execute if items entity @s $(slot) minecraft:poisonous_potato[minecraft:damage=20] run item modify entity @s $(slot) orange:magic_conch.broken
