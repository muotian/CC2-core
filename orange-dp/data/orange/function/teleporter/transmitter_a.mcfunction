execute unless entity @e[type=minecraft:shulker,tag=orange.teleporter.transmitter_a] run summon minecraft:shulker ~ ~-2 ~ {Tags:["orange.teleporter.transmitter_a"],active_effects:[{id:"minecraft:invisibility",duration:-1,show_particles:0b},{id:"minecraft:resistance",amplifier:4,duration:-1,show_particles:0b}],DeathLootTable:"orange:empty",Invulnerable:1b,NoAI:1b,PersistenceRequired:1b,Silent:1b}

execute store success score $transmitter_a orange.temp if entity @p[distance=0..1,gamemode=!spectator]
execute unless score $transmitter_a orange.temp = $transmitter_a orange.arg if score $transmitter_a orange.temp matches 1 run playsound orange:block.teleporter.activate ambient @a ~ ~ ~
execute unless score $transmitter_a orange.temp = $transmitter_a orange.arg if score $transmitter_a orange.temp matches 1 run stopsound @a ambient orange:block.teleporter.deactivate
execute unless score $transmitter_a orange.temp = $transmitter_a orange.arg if score $transmitter_a orange.temp matches 0 run playsound orange:block.teleporter.deactivate ambient @a ~ ~ ~
execute unless score $transmitter_a orange.temp = $transmitter_a orange.arg if score $transmitter_a orange.temp matches 0 run stopsound @a ambient orange:block.teleporter.activate

scoreboard players operation $transmitter_a orange.arg = $transmitter_a orange.temp
execute if score $transmitter_a orange.arg matches 1 positioned ~ ~-1 ~ unless entity @e[type=minecraft:shulker,tag=orange.teleporter.transmitter_a,distance=0..0.1] run tp @e[type=minecraft:shulker,tag=orange.teleporter.transmitter_a] ~ ~ ~
execute if score $transmitter_a orange.arg matches 0 positioned ~ ~-1 ~ if entity @e[type=minecraft:shulker,tag=orange.teleporter.transmitter_a,distance=0..0.1] run tp @e[type=minecraft:shulker,tag=orange.teleporter.transmitter_a] ~ ~-1 ~
execute if score $transmitter_a orange.arg matches 1 run data modify block ~ ~-1 ~ Age set value 2401L
execute if score $transmitter_a orange.arg matches 0 run data modify block ~ ~-1 ~ Age set value 1200L

execute as @a[distance=0..0.5,gamemode=!spectator] run function orange:teleporter/return

data remove block ~ ~3 ~ back_text
