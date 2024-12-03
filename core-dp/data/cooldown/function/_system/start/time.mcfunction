scoreboard players operation $duration cooldown.time = $length cooldown.time
scoreboard players operation $duration cooldown.time *= #20 cooldown.number

scoreboard players operation $target cooldown.time = $gametime cooldown.time
scoreboard players operation $target cooldown.time += $duration cooldown.time

scoreboard players operation $modulo cooldown.time = $target cooldown.time
scoreboard players operation $modulo cooldown.time %= #12000 cooldown.number

scoreboard players operation $data cooldown.time = $length cooldown.time
scoreboard players operation $data cooldown.time *= #16384 cooldown.number
scoreboard players operation $data cooldown.time += $modulo cooldown.time

execute store result storage cooldown:macro root.length int 1 run scoreboard players get $length cooldown.time
execute store result storage cooldown:macro root.target int 1 run scoreboard players get $target cooldown.time
execute store result storage cooldown:macro root.data int 1 run scoreboard players get $data cooldown.time
