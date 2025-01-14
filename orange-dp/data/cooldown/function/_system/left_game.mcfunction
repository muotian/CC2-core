scoreboard players reset @s cooldown.leave_game
execute if predicate cooldown:has_active_cooldown run function cooldown:_system/search_active
