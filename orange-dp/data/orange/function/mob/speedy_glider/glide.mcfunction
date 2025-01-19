execute on target run tag @s add orange.mob.target
rotate @s facing entity @n[tag=orange.mob.target,distance=..100]
execute on target run tag @s remove orange.mob.target
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{flags:{is_flying:true}}} run return 0
item modify entity @s armor.head {function:"minecraft:set_enchantments",enchantments:{"orange:mob/on_ground":1,"orange:mob/immune_fall":1},add:false}
data modify entity @s FallFlying set value 1b
