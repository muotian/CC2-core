execute unless data entity @s {inGround:1b} run return run particle minecraft:entity_effect{color:-8421505} ~ ~0.2 ~ 0 0 0 1 1 normal @a
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{periodic_tick:5}} run particle minecraft:entity_effect{color:-8421505} ~ ~0.2 ~ 0 0 0 1 1 normal @a
