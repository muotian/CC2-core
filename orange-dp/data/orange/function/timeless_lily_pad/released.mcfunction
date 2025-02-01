scoreboard players operation $weapon_slot orange.temp = @s orange.timeless_lily_pad.charging_slot
scoreboard players reset @s orange.timeless_lily_pad.charging_slot
execute if score @s orange.timeless_lily_pad.charge_time matches ..5 run return 0

execute if score $weapon_slot orange.temp matches 1 unless items entity @s weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{orange:{id:"timeless_lily_pad",mode:"default"}}] run scoreboard players set $weapon_slot orange.temp 0
execute if score $weapon_slot orange.temp matches -1 unless items entity @s weapon.offhand minecraft:poisonous_potato[minecraft:custom_data~{orange:{id:"timeless_lily_pad",mode:"default"}}] run scoreboard players set $weapon_slot orange.temp 0
execute if score $weapon_slot orange.temp matches 0 run return 0

tag @s add orange.timeless_lily_pad.thrower
execute at @s positioned 0.0 0.0 0.0 positioned ^ ^ ^0.5 run tp cc2-0-0-0-4 ~ ~ ~

execute if score $weapon_slot orange.temp matches 1 run item replace entity cc2-0-0-0-2 contents from entity @s weapon.mainhand
execute if score $weapon_slot orange.temp matches -1 run item replace entity cc2-0-0-0-2 contents from entity @s weapon.offhand
execute store result score $add_damage orange.temp run data get entity cc2-0-0-0-2 item.components."minecraft:enchantments".levels."orange:time_punishment" 5

execute if score $weapon_slot orange.temp matches 1 run execute at @s anchored eyes positioned ^ ^0.3 ^0.5 run summon minecraft:item ~ ~-0.125 ~ {Tags:["orange.timeless_lily_pad","orange.timeless_lily_pad.new"],Item:{id:"minecraft:structure_void",components:{"minecraft:item_model":"orange:invisible","minecraft:custom_data":{cc2:{unobtainable:{}}}}},Invulnerable:1b,NoGravity:1b,PickupDelay:32767s,Age:-32768s,Passengers:[{id:"minecraft:item_display",Tags:["orange.timeless_lily_pad","orange.timeless_lily_pad.mainhand","orange.timeless_lily_pad.new"],teleport_duration:1,item:{id:"minecraft:poisonous_potato",components:{"minecraft:item_model":"orange:timeless_lily_pad"}},interpolation_duration:5,transformation:{left_rotation:[0.58377373f,-0.10551956f,-0.07682948f,0.8013558f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.6799694f,0.6800511f,0.6800095f],translation:[0.0f,0.0f,0.0f]}}]}
execute if score $weapon_slot orange.temp matches -1 run execute at @s anchored eyes positioned ^ ^0.3 ^0.5 run summon minecraft:item ~ ~-0.125 ~ {Tags:["orange.timeless_lily_pad","orange.timeless_lily_pad.new"],Item:{id:"minecraft:structure_void",components:{"minecraft:item_model":"orange:invisible","minecraft:custom_data":{cc2:{unobtainable:{}}}}},Invulnerable:1b,NoGravity:1b,PickupDelay:32767s,Age:-32768s,Passengers:[{id:"minecraft:item_display",Tags:["orange.timeless_lily_pad","orange.timeless_lily_pad.offhand","orange.timeless_lily_pad.new"],teleport_duration:1,item:{id:"minecraft:poisonous_potato",components:{"minecraft:item_model":"orange:timeless_lily_pad"}},interpolation_duration:5,transformation:{left_rotation:[0.58377373f,0.10551956f,0.07682948f,0.8013558f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.6799694f,0.6800511f,0.6800095f],translation:[0.0f,0.0f,0.0f]}}]}

data modify storage orange:macro root set value {serial:0}
execute store result storage orange:macro root.serial int 1 run scoreboard players get $serial orange.timeless_lily_pad.id
execute as @e[limit=1,type=minecraft:item,tag=orange.timeless_lily_pad.new] run function orange:timeless_lily_pad/init

execute if score $weapon_slot orange.temp matches 1 run item modify entity @s weapon.mainhand orange:timeless_lily_pad.flying
execute if score $weapon_slot orange.temp matches -1 run item modify entity @s weapon.offhand orange:timeless_lily_pad.flying

execute unless score $serial orange.timeless_lily_pad.id matches 2147483647 run scoreboard players add $serial orange.timeless_lily_pad.id 1
execute if score $serial orange.timeless_lily_pad.id matches 2147483647 run scoreboard players set $serial orange.timeless_lily_pad.id -2147483648

execute at @s run playsound orange:item.timeless_lily_pad.throw player @a ~ ~ ~

tp cc2-0-0-0-4 0.0 0.0 0.0
tag @e[tag=orange.timeless_lily_pad.new] remove orange.timeless_lily_pad.new
tag @s remove orange.timeless_lily_pad.thrower
