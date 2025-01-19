item modify entity @s armor.head {function:"minecraft:set_components",components:{"!minecraft:glider":{}}}
effect clear @s minecraft:levitation
data remove entity @s ArmorItems[3].components."minecraft:enchantments".levels."orange:mob/immune_fall"
data remove entity @s ArmorItems[3].components."minecraft:enchantments".levels."orange:mob/falling"
data remove entity @s ArmorItems[3].components."minecraft:enchantments".levels."orange:mob/post_attack"
data modify entity @s FallFlying set value 0b
