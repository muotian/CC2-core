execute align xyz run summon minecraft:marker ~0.5 ~0.5 ~0.5 {Tags:["orange.spawner"]}
setblock ~ ~ ~ minecraft:spawner{Delay:0s,MaxNearbyEntities:6s,MaxSpawnDelay:800s,MinSpawnDelay:400s,RequiredPlayerRange:12s,SpawnCount:2s,SpawnPotentials:[{data:{custom_spawn_rules:{block_light_limit:{max_inclusive:7,min_inclusive:0}},entity:{id:"minecraft:zombie",CanPickUpLoot:false,CustomName:'{"translate":"entity.orange.time_defender","fallback":"Time Defender"}',DeathLootTable:"orange:mob/time_defender/drop",HandItems:[{},{}],IsBaby:false,Tags:["orange.mob.time_defender"]},equipment:{loot_table:"orange:mob/time_defender/equipment",slot_drop_chances:0f}},weight:1}],SpawnRange:5s}
