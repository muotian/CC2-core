attribute @s[scores={orange.flame_of_finality.effect.timer=1..}] movement_speed modifier add flame_of_finality.effect -0.5 add_multiplied_base
attribute @s[scores={orange.flame_of_finality.effect.timer=1..}] gravity modifier add flame_of_finality.effect -0.8 add_multiplied_base
attribute @s[scores={orange.flame_of_finality.effect.timer=1..}] attack_damage modifier add flame_of_finality.effect -1.0 add_multiplied_base
attribute @s[scores={orange.flame_of_finality.effect.timer=1..}] knockback_resistance modifier add flame_of_finality.effect 1 add_multiplied_base
attribute @s[scores={orange.flame_of_finality.effect.timer=1..}] safe_fall_distance modifier add flame_of_finality.effect 1024 add_multiplied_base
effect give @s[scores={orange.flame_of_finality.effect.timer=1..}] slow_falling 1 255 true

attribute @s[scores={orange.flame_of_finality.effect.timer=0}] movement_speed modifier remove flame_of_finality.effect
attribute @s[scores={orange.flame_of_finality.effect.timer=0}] gravity modifier remove flame_of_finality.effect
attribute @s[scores={orange.flame_of_finality.effect.timer=0}] attack_damage modifier remove flame_of_finality.effect
attribute @s[scores={orange.flame_of_finality.effect.timer=0}] knockback_resistance modifier remove flame_of_finality.effect
attribute @s[scores={orange.flame_of_finality.effect.timer=0}] safe_fall_distance modifier remove flame_of_finality.effect


scoreboard players reset @s[scores={orange.flame_of_finality.effect.timer=0}] orange.flame_of_finality.effect.timer