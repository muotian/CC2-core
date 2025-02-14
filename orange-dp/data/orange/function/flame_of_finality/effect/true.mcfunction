# 終焉之眼開啟 / Eye of the finality Open

# 清除層數 / Clear level
scoreboard players set @s orange.flame_of_finality.effect 0

playsound minecraft:entity.warden.sonic_boom voice @a ~ ~1 ~ 1 1
playsound minecraft:block.beacon.deactivate voice @a ~ ~1 ~ 1 0.85
playsound minecraft:block.vault.open_shutter voice @a ~ ~1 ~ 1 0.5
playsound minecraft:block.vault.open_shutter voice @a ~ ~1 ~ 1 0.5

summon minecraft:item_display ~ ~2 ~ {Tags:["orange.eye_of_finality","orange.eye_of_finality.spawn"],interpolation_duration:2,start_interpolation:5,billboard: "vertical", brightness: {block: 15, sky: 15}, item: {components: {"minecraft:item_model": "orange:eye_of_finality"}, count: 1, id: "minecraft:ender_eye"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 0.0f, 2.0f], translation: [0.0f, 0.0f, 0.0f]}}
data merge entity @e[tag=orange.eye_of_finality.spawn,limit=1] {transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 2.0f, 2.0f], translation: [0.0f, 0.0f, 0.0f]}}
scoreboard players set @e[tag=orange.eye_of_finality.spawn,limit=1] orange.flame_of_finality.eye_of_finality.animation 5
tag @e[tag=orange.eye_of_finality.spawn,limit=1] remove orange.eye_of_finality.spawn


execute as @e[type=!player,distance=..8,type=!#orange:dummy_entity] run damage @s 5 player_explosion by @p
execute as @e[type=!player,distance=..8,type=!#orange:dummy_entity] run data modify entity @s Motion[1] set value 0.75
scoreboard players set @e[distance=..8,type=!player,type=!#orange:dummy_entity] orange.flame_of_finality.effect.timer 5

# 移除進度 / Remove advancement
advancement revoke @s only orange:flame_of_finality/effect/true