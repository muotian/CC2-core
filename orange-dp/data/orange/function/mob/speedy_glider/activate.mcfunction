scoreboard players set $speedy_glider orange.temp 0
execute on target run function orange:mob/speedy_glider/target_distance
execute if score $speedy_glider orange.temp matches 0 run return 0
execute if score $speedy_glider orange.temp matches 1 run effect give @s minecraft:levitation 2 4 true
execute if score $speedy_glider orange.temp matches 2 run effect give @s minecraft:levitation 2 5 true
execute if score $speedy_glider orange.temp matches 3 run effect give @s minecraft:levitation 2 7 true
scoreboard players set @s orange.mob.muf_targeting_moved 1
item modify entity @s armor.head [{function:"minecraft:set_components",components:{"minecraft:glider":{}}},{function:"minecraft:set_enchantments",enchantments:{"orange:mob/falling":1,"orange:mob/post_attack":1},add:false}]
