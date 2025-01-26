execute on origin if score @s orange.mob.muf_projectile_spawned_mainhand matches 1 run return 0
execute on origin run item replace entity cc2-0-0-0-2 contents from entity @s weapon.mainhand
function orange:command with entity cc2-0-0-0-2 item.components."minecraft:custom_data".orange.mob.projectile_spawned_mainhand
