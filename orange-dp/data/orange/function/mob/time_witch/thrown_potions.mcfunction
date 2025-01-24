tag @s add orange.time_stealing_potion
execute at @s summon minecraft:marker run function orange:time_stealing_potion/detector_summon
data modify entity @s Item set value {id:"minecraft:lingering_potion",components:{"minecraft:potion_contents":{custom_color:8355711,custom_effects:[{"id":"minecraft:unluck",ambient:true,amplifier:1,duration:2,show_icon:false,show_particles:false}]}},count:1}
tag @s remove orange.time_stealing_potion
