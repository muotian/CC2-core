scoreboard players operation $gametime cooldown.time = #gametime cc2
#execute as @a[scores={cooldown.leave_game=1..}] run function cooldown:_system/search_active
scoreboard players operation @a cooldown.player_time = $gametime cooldown.time
function cooldown:demo/tick
