
$scoreboard players set $length cooldown.time $(length)

$scoreboard objectives add cooldown.$(objective).length dummy
$scoreboard players operation @s cooldown.$(objective).length = $length cooldown.time

$data modify storage cooldown:macro root set value {objective:"$(objective)",slot:"",length:0,target:0,data:0}
execute if score $length cooldown.time matches 1..600 run function cooldown:_system/start_score with storage cooldown:macro root

