execute on origin unless entity @s[tag=orange.no_gravity_rod.origin] run return 0
execute at @s positioned ~-0.3 ~-0.3 ~-0.3 as @e[type=#orange:possesses_time,dx=0,dy=0,dz=0] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0,dy=0,dz=0] run function orange:gravity_cancelling/effect
