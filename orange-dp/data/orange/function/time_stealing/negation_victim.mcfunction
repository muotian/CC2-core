scoreboard players reset @s orange.time_stealing.negation
execute if predicate orange:is_wearing_full_stablizing run return run scoreboard players set @s orange.time_stealing.negation 1
execute if predicate orange:activates_time_interferometer run return run execute unless function orange:time_interferometer/activated run scoreboard players set @s orange.time_stealing.negation 1
