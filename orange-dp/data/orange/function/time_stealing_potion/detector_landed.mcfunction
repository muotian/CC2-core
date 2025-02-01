tag @s remove orange.time_stealing_potion.flying
tag @s add orange.time_stealing_potion.landed
execute at @s run ride @s mount @n[type=minecraft:area_effect_cloud,predicate=!orange:has_passengers,predicate=orange:is_time_stealing_potion_cloud]
execute on vehicle run data merge entity @s {Duration:60,RadiusOnUse:0f,RadiusPerTick:0.1f,Radius:1f,WaitTime:0,Particle:{type:"minecraft:dust",color:[0.6666667,0.6666667,0.6666667],scale:0.6666667}}
execute on vehicle at @s run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:structure_void",count:1,components:{"minecraft:item_model":"orange:invisible","minecraft:custom_data":{cc2:{unobtainable:{}}}}},PickupDelay:32767,Age:5940,Tags:["orange.time_stealing_potion.vehicle"]}
execute on vehicle at @s run ride @s mount @n[type=minecraft:item,predicate=!orange:has_passengers,tag=orange.time_stealing_potion.vehicle,distance=0..0.1]
