execute unless entity @e[type=minecraft:shulker,tag=orange.teleporter.transmitter_b] run summon minecraft:shulker ~ ~-2 ~ {Tags:["orange.teleporter.transmitter_b"],active_effects:[{id:"minecraft:invisibility",duration:-1,show_particles:0b},{id:"minecraft:resistance",amplifier:4,duration:-1,show_particles:0b}],DeathLootTable:"orange:empty",Invulnerable:1b,NoAI:1b,PersistenceRequired:1b,Silent:1b}

execute store success score $transmitter_b orange.temp if entity @p[distance=0..1,gamemode=!spectator]
execute unless score $transmitter_b orange.temp = $transmitter_b orange.arg if score $transmitter_b orange.temp matches 1 run playsound orange:block.teleporter.activate block @a ~ ~ ~
execute unless score $transmitter_b orange.temp = $transmitter_b orange.arg if score $transmitter_b orange.temp matches 1 run stopsound @a block orange:block.teleporter.deactivate
execute unless score $transmitter_b orange.temp = $transmitter_b orange.arg if score $transmitter_b orange.temp matches 0 run playsound orange:block.teleporter.deactivate block @a ~ ~ ~
execute unless score $transmitter_b orange.temp = $transmitter_b orange.arg if score $transmitter_b orange.temp matches 0 run stopsound @a block orange:block.teleporter.activate

execute store success score $transmitter_b orange.arg if entity @p[distance=0..1,gamemode=!spectator]
execute if score $transmitter_b orange.arg matches 1 positioned ~ ~-1 ~ unless entity @e[type=minecraft:shulker,tag=orange.teleporter.transmitter_b,distance=0..0.1] run tp @e[type=minecraft:shulker,tag=orange.teleporter.transmitter_b] ~ ~ ~
execute if score $transmitter_b orange.arg matches 0 positioned ~ ~-1 ~ if entity @e[type=minecraft:shulker,tag=orange.teleporter.transmitter_b,distance=0..0.1] run tp @e[type=minecraft:shulker,tag=orange.teleporter.transmitter_b] ~ ~-1 ~
execute if score $transmitter_b orange.arg matches 1 run data modify block ~ ~-1 ~ Age set value 2405L
execute if score $transmitter_b orange.arg matches 0 run data modify block ~ ~-1 ~ Age set value 1200L

execute as @a[distance=0..0.5,gamemode=!spectator] run function orange:teleporter/return

data remove block ~ ~3 ~ back_text
