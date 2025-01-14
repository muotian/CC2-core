scoreboard players set @s cooldown.ignore 1
function cooldown:_system/start/time
function cooldown:_system/start/modify with storage cooldown:macro root
scoreboard players reset @s cooldown.ignore
