scoreboard players reset @s orange.mob.muf_targeting_moved
item modify entity @s armor.head {function:"minecraft:set_components",components:{"!minecraft:glider":{}}}
data remove entity @s ArmorItems[3].components."minecraft:enchantments".levels."orange:mob/on_ground"
data remove entity @s ArmorItems[3].components."minecraft:enchantments".levels."orange:mob/immune_fall"
data remove entity @s ArmorItems[3].components."minecraft:enchantments".levels."orange:mob/falling"
data remove entity @s ArmorItems[3].components."minecraft:enchantments".levels."orange:mob/post_attack"
