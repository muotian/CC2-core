# this function is hooked on #cc2:load_player_nbt_score
execute store result score @s orange.effects.speed.amplifier run data get storage cc2:player_nbt root.active_effects[{id:"minecraft:speed"}].amplifier
execute store result score @s orange.effects.speed.duration run data get storage cc2:player_nbt root.active_effects[{id:"minecraft:speed"}].duration
execute store result score @s orange.effects.slowness.amplifier run data get storage cc2:player_nbt root.active_effects[{id:"minecraft:slowness"}].amplifier
execute store result score @s orange.effects.slowness.duration run data get storage cc2:player_nbt root.active_effects[{id:"minecraft:slowness"}].duration
execute store result score @s orange.effects.haste.amplifier run data get storage cc2:player_nbt root.active_effects[{id:"minecraft:haste"}].amplifier
execute store result score @s orange.effects.haste.duration run data get storage cc2:player_nbt root.active_effects[{id:"minecraft:haste"}].duration
execute store result score @s orange.effects.mining_fatigue.amplifier run data get storage cc2:player_nbt root.active_effects[{id:"minecraft:mining_fatigue"}].amplifier
execute store result score @s orange.effects.mining_fatigue.duration run data get storage cc2:player_nbt root.active_effects[{id:"minecraft:mining_fatigue"}].duration
