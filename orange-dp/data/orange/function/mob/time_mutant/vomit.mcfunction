scoreboard players add @s orange.mob.time_mutant.state 1
scoreboard players operation @s orange.mob.time_mutant.state %= #3 number
execute unless score @s orange.mob.time_mutant.state matches 1 run return 0
playsound minecraft:entity.player.burp hostile @a ~ ~ ~
execute on target facing entity @s eyes positioned 0.0 0.0 0.0 run tp cc2-0-0-0-4 ^ ^ ^0.7
execute anchored eyes positioned ^ ^ ^ summon minecraft:endermite run function orange:mob/time_mutant/spawn_parasite
tp cc2-0-0-0-4 0.0 0.0 0.0
