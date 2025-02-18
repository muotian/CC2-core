# 移除進度 / Remove advancement
advancement revoke @s only orange:flame_of_finality/use

# 添加分數 / Add score
scoreboard players add @s orange.flame_of_finality.effect 0

scoreboard players add @s[scores={orange.flame_of_finality.effect=..9}] orange.flame_of_finality.effect 1
title @s title ""
title @s times 0 10 10
playsound minecraft:entity.illusioner.cast_spell voice @a ~ ~1 ~ 1 1

title @s[scores={orange.flame_of_finality.effect=0}] subtitle [{"text":""},{"text":"✡✡✡✡✡","color":"dark_gray"}]
title @s[scores={orange.flame_of_finality.effect=1}] subtitle [{"text":"✡","color":"dark_red"},{"text":"✡✡✡✡","color":"dark_gray"}]
title @s[scores={orange.flame_of_finality.effect=2}] subtitle [{"text":"✡✡","color":"dark_red"},{"text":"✡✡✡","color":"dark_gray"}]
title @s[scores={orange.flame_of_finality.effect=3}] subtitle [{"text":"✡✡✡","color":"dark_red"},{"text":"✡✡","color":"dark_gray"}]
title @s[scores={orange.flame_of_finality.effect=4}] subtitle [{"text":"✡✡✡✡","color":"dark_red"},{"text":"✡","color":"dark_gray"}]
title @s[scores={orange.flame_of_finality.effect=5}] subtitle [{"text":"✡✡✡✡✡","color":"dark_red"}]

    # 偵測玩家是否層數大於等於10 / Detect if the player has 10 or more score

    advancement grant @s[scores={orange.flame_of_finality.effect=5..}] only orange:flame_of_finality/effect/true