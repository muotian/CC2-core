tag @s add orange.mysterious_ore.source
execute as @s[type=!minecraft:item] positioned ~ ~1 ~ run function orange:mysterious_ore/patricle
execute as @s[type=minecraft:item] positioned ~ ~0.25 ~ run function orange:mysterious_ore/patricle
execute as @e[type=#orange:possesses_time,distance=0..9] unless function orange:mysterious_ore/armor_protection run function orange:mysterious_ore/damage_cal
tag @s remove orange.mysterious_ore.source
