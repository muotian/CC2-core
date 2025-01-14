advancement revoke @s only orange:time_orb_consumed

scoreboard players operation @s orange.time_stealing.level *= #-1 number
function orange:time_stealing/effect

effect clear @s minecraft:speed
effect clear @s minecraft:slowness
effect clear @s minecraft:haste
effect clear @s minecraft:mining_fatigue

execute unless score @s orange.effects.speed.duration matches 0 run function orange:time_orb/revert_speed
execute unless score @s orange.effects.slowness.duration matches 0 run function orange:time_orb/revert_slowness
execute unless score @s orange.effects.haste.duration matches 0 run function orange:time_orb/revert_haste
execute unless score @s orange.effects.mining_fatigue.duration matches 0 run function orange:time_orb/revert_mining_fatigue
