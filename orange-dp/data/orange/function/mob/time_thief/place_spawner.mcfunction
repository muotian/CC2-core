setblock ~ ~ ~ minecraft:spawner{Delay:0s,MaxNearbyEntities:6s,MaxSpawnDelay:800s,MinSpawnDelay:400s,RequiredPlayerRange:6s,SpawnCount:3s,SpawnPotentials:[{data:{custom_spawn_rules:{block_light_limit:{max_inclusive:7,min_inclusive:0}},entity:{id:"minecraft:zombie",CanPickUpLoot:false,CustomName:'{"translate":"entity.orange.time_thief","fallback":"Time Thief"}',DeathLootTable:"orange:mob/time_thief/drop",HandItems:[{id:"minecraft:stone_sword",components:{"minecraft:enchantments":{"orange:mob/tick_mainhand":1},"minecraft:custom_data":{orange:{mob:{tick_mainhand:{command:"loot replace entity @s weapon.mainhand loot orange:weapon/time_stealing_sword"}}}}},count:1},{}],IsBaby:false,Tags:["orange.mob.time_thief"]},equipment:{loot_table:"orange:mob/time_thief/equipment",slot_drop_chances:0f}},weight:1}],SpawnRange:6s}
