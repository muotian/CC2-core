execute store result score $slot orange.temp run random value 0..3
execute if score $slot orange.temp matches 0 if items entity @s armor.feet #minecraft:foot_armor run return 1
execute if score $slot orange.temp matches 1 if items entity @s armor.legs #minecraft:leg_armor run return 1
execute if score $slot orange.temp matches 2 if items entity @s armor.chest #minecraft:chest_armor run return 1
execute if score $slot orange.temp matches 3 if items entity @s armor.head #minecraft:head_armor run return 1
return 0
