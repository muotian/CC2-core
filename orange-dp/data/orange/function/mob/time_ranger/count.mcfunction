execute store result score $random orange.temp run random value 1..3
execute if score $random orange.temp matches 1 run loot replace entity @s weapon.offhand loot orange:item/time_stealing_arrow 
execute if score $random orange.temp matches 2 run loot replace entity @s weapon.offhand loot orange:item/time_releasing_arrow
execute if score $random orange.temp matches 3 run loot replace entity @s weapon.offhand loot orange:item/gravity_cancelling_arrow
