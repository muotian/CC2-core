scoreboard players remove @e[type=minecraft:villager,scores={npc.reset=1..},tag=npc.this] npc.reset 1
execute store result score $this npc.trader_rotation run data get entity @s Rotation[0]
execute unless entity @e[limit=1,type=minecraft:villager,tag=npc.this,tag=npc.trader_b,scores={npc.reset=1..}] if score $this npc.trader_rotation = @s npc.trader_rotation run return 0
scoreboard players operation @s npc.trader_rotation = $this npc.trader_rotation

execute as @e[type=#endsky_npc:display_entities,predicate=!endsky_npc:trader/riding,tag=npc.this,tag=npc.trader_b] run ride @s mount @e[limit=1,type=minecraft:villager,scores={npc.reset=0},tag=npc.this,tag=npc.trader_b]
tp @e[limit=1,type=minecraft:villager,tag=npc.this,tag=npc.trader_b,scores={npc.reset=0..1}] ^-0.75 ^-1.5 ^0.75
tp @e[limit=1,type=minecraft:interaction,tag=npc.this,tag=npc.trader_b] ^-0.75 ^-1.51 ^0.75

execute as @e[type=#endsky_npc:display_entities,predicate=!endsky_npc:trader/riding,tag=npc.this,tag=npc.trader_s] run ride @s mount @e[limit=1,type=minecraft:villager,scores={npc.reset=0},tag=npc.this,tag=npc.trader_s]
tp @e[limit=1,type=minecraft:villager,tag=npc.this,tag=npc.trader_s,scores={npc.reset=0..1}] ^0.75 ^-1.5 ^0.75
tp @e[limit=1,type=minecraft:interaction,tag=npc.this,tag=npc.trader_s] ^0.75 ^-1.51 ^0.75
