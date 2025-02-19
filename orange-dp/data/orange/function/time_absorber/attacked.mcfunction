advancement revoke @s only orange:time_absorber.attacked

tag @s add orange.time_absorber
scoreboard players set $affected_count orange.temp 0
execute as @e[nbt={HurtTime:10s}] if function orange:time_absorber/affected run scoreboard players add $affected_count orange.temp 1
execute if score $affected_count orange.temp matches 1.. run scoreboard players operation $time_stealing.cmd_attacker orange.arg = $affected_count orange.temp
execute if score $affected_count orange.temp matches 1.. run function orange:time_stealing/cmd_attacker
tag @s remove orange.time_absorber
