tag @s add orange.timeless_lily_pad.returning
execute on passengers run tag @s add orange.timeless_lily_pad.display
execute on passengers run ride @s dismount
ride @s mount @e[limit=1,type=minecraft:item_display,tag=orange.timeless_lily_pad.display]
execute on vehicle run data merge entity @s[tag=orange.timeless_lily_pad.mainhand] {start_interpolation:-1,transformation:{left_rotation:[0.58377373f,0.10551956f,0.07682948f,0.8013558f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.6799694f,0.6800511f,0.6800095f],translation:[0.0f,0.0f,0.0f]}}
execute on vehicle run data merge entity @s[tag=orange.timeless_lily_pad.offhand] {start_interpolation:-1,transformation:{left_rotation:[0.58377373f,-0.10551956f,-0.07682948f,0.8013558f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.6799694f,0.6800511f,0.6800095f],translation:[0.0f,0.0f,0.0f]}}
execute on vehicle run tag @s remove orange.timeless_lily_pad.display
