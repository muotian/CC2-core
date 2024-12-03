scoreboard players reset @s cooldown.leave_game
scoreboard players operation $off_time cooldown.time = $gametime cooldown.time
scoreboard players operation $off_time cooldown.time -= @s cooldown.player_time
