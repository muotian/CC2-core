advancement revoke @s only orange:no_gravity_rod.hooked
tag @s add orange.no_gravity_rod.origin
execute as @e[type=minecraft:fishing_bobber,tag=orange.no_gravity_rod.bobber] run function orange:no_gravity_rod/match
tag @s remove orange.no_gravity_rod.origin
