execute if data entity @s {Size:0} run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:chorus_flower"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.625f,0.625f,0.625f],translation:[0f,0.3375f,0f]},Tags:["orange.mob.time_cube.display","orange.mob.time_cube.new"],teleport_duration:6}
execute if data entity @s {Size:1} run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:chorus_flower"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1.25f,1.25f,1.25f],translation:[0f,0.675f,0f]},Tags:["orange.mob.time_cube.display","orange.mob.time_cube.new"],teleport_duration:6}

ride @e[limit=1,type=minecraft:item_display,tag=orange.mob.time_cube.new] mount @s

tag @e[type=minecraft:item_display,tag=orange.mob.time_cube.new] remove orange.mob.time_cube.new

data modify entity @s DeathLootTable set value "orange:mob/time_cube/drop"
