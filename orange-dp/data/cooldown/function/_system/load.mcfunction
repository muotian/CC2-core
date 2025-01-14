scoreboard objectives add cooldown.time dummy
scoreboard objectives add cooldown.number dummy
scoreboard objectives add cooldown.ignore dummy
scoreboard objectives add cooldown.player_time dummy
scoreboard objectives add cooldown.leave_game minecraft.custom:minecraft.leave_game

scoreboard players set #20 cooldown.number 20
scoreboard players set #12000 cooldown.number 12000
scoreboard players set #16384 cooldown.number 16384

function cooldown:demo/load
