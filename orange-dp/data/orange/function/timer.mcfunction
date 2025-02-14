# 這裡可以放置需要用到的計時器(1s) / timer(1s) here

scoreboard players remove @e[scores={orange.flame_of_finality.effect.timer=1..}] orange.flame_of_finality.effect.timer 1
scoreboard players remove @e[scores={orange.flame_of_finality.eye_of_finality.animation=1..}] orange.flame_of_finality.eye_of_finality.animation 1

execute as @e[tag=orange.eye_of_finality,scores={orange.flame_of_finality.eye_of_finality.animation=1}] run data merge entity @s {start_interpolation:5,interpolation_duration:2,transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 0.0f, 2.0f], translation: [0.0f, 0.0f, 0.0f]}}
execute as @e[tag=orange.eye_of_finality,scores={orange.flame_of_finality.eye_of_finality.animation=0}] run kill @s

execute as @e[type=!player,type=!#orange:dummy_entity] run function orange:flame_of_finality/effect/guide


schedule function orange:timer 1s