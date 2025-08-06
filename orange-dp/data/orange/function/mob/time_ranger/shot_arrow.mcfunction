execute on origin run loot replace entity @s weapon.offhand loot orange:mob/time_ranger/offhand
execute on origin run item modify entity @s weapon.mainhand [{function:"minecraft:set_enchantments",enchantments:{"orange:mob/attacked":1}},{function:"minecraft:set_custom_data",tag:{orange:{mob:{attacked:{command:"function orange:mob/time_ranger/attacked"}}}}}]
data modify entity @s damage set value 1.5d
data modify entity @s weapon.components."minecraft:enchantments".levels."orange:mob/attacked" set value 1
data remove entity @s item.components."minecraft:potion_contents".custom_effects
data merge entity @s {damage:1.0d,item:{components:{"minecraft:potion_contents":{custom_effects:[]}}},weapon:{components:{"minecraft:enchantments":{levels:{"orange:mob/attacked":1}}}}}
