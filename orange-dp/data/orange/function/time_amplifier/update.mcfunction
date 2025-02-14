data modify storage orange:macro root set value {time:0}
execute store result storage orange:macro root.time int 1 run scoreboard players get #gametime cc2
execute if items entity @s weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{orange:{id:"time_amplifier"}}] run item modify entity @s weapon.mainhand orange:time_amplifier.update
execute if items entity @s weapon.offhand minecraft:poisonous_potato[minecraft:custom_data~{orange:{id:"time_amplifier"}}] run item modify entity @s weapon.offhand orange:time_amplifier.update
