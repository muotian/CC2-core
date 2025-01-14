$execute unless score @s $(objective) matches 1.. run return 0
$scoreboard players operation $length cooldown.time = @s cooldown.$(objective).length
$scoreboard players operation $duration cooldown.time = @s $(objective)

scoreboard players operation $target cooldown.time = $gametime cooldown.time
scoreboard players operation $target cooldown.time += $duration cooldown.time

scoreboard players operation $modulo cooldown.time = $target cooldown.time
scoreboard players operation $modulo cooldown.time %= #12000 cooldown.number

scoreboard players operation $data cooldown.time = $length cooldown.time
scoreboard players operation $data cooldown.time *= #16384 cooldown.number
scoreboard players operation $data cooldown.time += $modulo cooldown.time

$data modify storage cooldown:macro root set value {objective:"$(objective)",slot:"",duration:0,target:0,data:0}

execute store result storage cooldown:macro root.duration int 1 run scoreboard players get $duration cooldown.time
execute store result storage cooldown:macro root.target int 1 run scoreboard players get $target cooldown.time
execute store result storage cooldown:macro root.data int 1 run scoreboard players get $data cooldown.time

function cooldown:_system/search_score with storage cooldown:macro root
