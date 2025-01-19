execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{distance:{horizontal:{min:5,max:10}}}} run scoreboard players set $speedy_glider orange.temp 1
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{distance:{horizontal:{min:10,max:15}}}} run scoreboard players set $speedy_glider orange.temp 2
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{distance:{horizontal:{min:15,max:20}}}} run scoreboard players set $speedy_glider orange.temp 3
