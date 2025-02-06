item modify entity @s armor.head [{function:"minecraft:set_components",components:{"!minecraft:glider":{}}},{function:"minecraft:set_enchantments",enchantments:{"orange:mob/immune_fall":0,"orange:mob/falling":0,"orange:mob/post_attack":0}}]
effect clear @s minecraft:levitation
data modify entity @s FallFlying set value 0b
