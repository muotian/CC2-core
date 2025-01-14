$scoreboard players set $length cooldown.time $(length)
execute unless score $length cooldown.time matches 1..600 run return run tellraw @a {"color":"red","text":"[Cooldown] Invalid cooldown length, expected 1..600."}

$execute store success score $success cooldown.number run scoreboard players set @s $(objective) 0
execute unless score $success cooldown.number matches 1 run return run tellraw @a {"color":"red","text":"[Cooldown] Objective does not exist."}

$scoreboard objectives add cooldown.$(objective).length dummy
$scoreboard players operation @s cooldown.$(objective).length = $length cooldown.time

$data modify storage cooldown:macro root set value {objective:"$(objective)",slot:"",duration:0,target:0,data:0}
function cooldown:_system/start_score with storage cooldown:macro root

