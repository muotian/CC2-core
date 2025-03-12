execute store result score $slot orange.temp run random value 0..3
execute if score $slot orange.temp matches 0 if items entity @s armor.feet * run return 1
execute if score $slot orange.temp matches 1 if items entity @s armor.legs * run return 1
execute if score $slot orange.temp matches 2 if items entity @s armor.chest * run return 1
execute if score $slot orange.temp matches 3 if items entity @s armor.head * run return 1
return 0
