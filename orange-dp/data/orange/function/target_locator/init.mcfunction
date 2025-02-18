data modify storage orange:macro root set value {x:0,y:0,z:0,slot:""}
execute store result storage orange:macro root.x int 1 run data get entity @e[limit=1,type=minecraft:marker,tag=orange.wool_locator] Pos[0]
execute store result storage orange:macro root.y int 1 run data get entity @e[limit=1,type=minecraft:marker,tag=orange.wool_locator] Pos[1]
execute store result storage orange:macro root.z int 1 run data get entity @e[limit=1,type=minecraft:marker,tag=orange.wool_locator] Pos[2]

execute if items entity @s container.0 minecraft:compass[minecraft:custom_data~{orange:{id:"target_locator",mode:"unbounded"}}] run function orange:target_locator/slot {slot:"container.0"}
execute if items entity @s container.1 minecraft:compass[minecraft:custom_data~{orange:{id:"target_locator",mode:"unbounded"}}] run function orange:target_locator/slot {slot:"container.1"}
execute if items entity @s container.2 minecraft:compass[minecraft:custom_data~{orange:{id:"target_locator",mode:"unbounded"}}] run function orange:target_locator/slot {slot:"container.2"}
execute if items entity @s container.3 minecraft:compass[minecraft:custom_data~{orange:{id:"target_locator",mode:"unbounded"}}] run function orange:target_locator/slot {slot:"container.3"}
execute if items entity @s container.4 minecraft:compass[minecraft:custom_data~{orange:{id:"target_locator",mode:"unbounded"}}] run function orange:target_locator/slot {slot:"container.4"}
execute if items entity @s container.5 minecraft:compass[minecraft:custom_data~{orange:{id:"target_locator",mode:"unbounded"}}] run function orange:target_locator/slot {slot:"container.5"}
execute if items entity @s container.6 minecraft:compass[minecraft:custom_data~{orange:{id:"target_locator",mode:"unbounded"}}] run function orange:target_locator/slot {slot:"container.6"}
execute if items entity @s container.7 minecraft:compass[minecraft:custom_data~{orange:{id:"target_locator",mode:"unbounded"}}] run function orange:target_locator/slot {slot:"container.7"}
execute if items entity @s container.8 minecraft:compass[minecraft:custom_data~{orange:{id:"target_locator",mode:"unbounded"}}] run function orange:target_locator/slot {slot:"container.8"}
execute if items entity @s container.9 minecraft:compass[minecraft:custom_data~{orange:{id:"target_locator",mode:"unbounded"}}] run function orange:target_locator/slot {slot:"container.9"}
execute if items entity @s container.10 minecraft:compass[minecraft:custom_data~{orange:{id:"target_locator",mode:"unbounded"}}] run function orange:target_locator/slot {slot:"container.10"}
execute if items entity @s container.11 minecraft:compass[minecraft:custom_data~{orange:{id:"target_locator",mode:"unbounded"}}] run function orange:target_locator/slot {slot:"container.11"}
execute if items entity @s container.12 minecraft:compass[minecraft:custom_data~{orange:{id:"target_locator",mode:"unbounded"}}] run function orange:target_locator/slot {slot:"container.12"}
execute if items entity @s container.13 minecraft:compass[minecraft:custom_data~{orange:{id:"target_locator",mode:"unbounded"}}] run function orange:target_locator/slot {slot:"container.13"}
execute if items entity @s container.14 minecraft:compass[minecraft:custom_data~{orange:{id:"target_locator",mode:"unbounded"}}] run function orange:target_locator/slot {slot:"container.14"}
execute if items entity @s container.15 minecraft:compass[minecraft:custom_data~{orange:{id:"target_locator",mode:"unbounded"}}] run function orange:target_locator/slot {slot:"container.15"}
execute if items entity @s container.16 minecraft:compass[minecraft:custom_data~{orange:{id:"target_locator",mode:"unbounded"}}] run function orange:target_locator/slot {slot:"container.16"}
execute if items entity @s container.17 minecraft:compass[minecraft:custom_data~{orange:{id:"target_locator",mode:"unbounded"}}] run function orange:target_locator/slot {slot:"container.17"}
execute if items entity @s container.18 minecraft:compass[minecraft:custom_data~{orange:{id:"target_locator",mode:"unbounded"}}] run function orange:target_locator/slot {slot:"container.18"}
execute if items entity @s container.19 minecraft:compass[minecraft:custom_data~{orange:{id:"target_locator",mode:"unbounded"}}] run function orange:target_locator/slot {slot:"container.19"}
execute if items entity @s container.20 minecraft:compass[minecraft:custom_data~{orange:{id:"target_locator",mode:"unbounded"}}] run function orange:target_locator/slot {slot:"container.20"}
execute if items entity @s container.21 minecraft:compass[minecraft:custom_data~{orange:{id:"target_locator",mode:"unbounded"}}] run function orange:target_locator/slot {slot:"container.21"}
execute if items entity @s container.22 minecraft:compass[minecraft:custom_data~{orange:{id:"target_locator",mode:"unbounded"}}] run function orange:target_locator/slot {slot:"container.22"}
execute if items entity @s container.23 minecraft:compass[minecraft:custom_data~{orange:{id:"target_locator",mode:"unbounded"}}] run function orange:target_locator/slot {slot:"container.23"}
execute if items entity @s container.24 minecraft:compass[minecraft:custom_data~{orange:{id:"target_locator",mode:"unbounded"}}] run function orange:target_locator/slot {slot:"container.24"}
execute if items entity @s container.25 minecraft:compass[minecraft:custom_data~{orange:{id:"target_locator",mode:"unbounded"}}] run function orange:target_locator/slot {slot:"container.25"}
execute if items entity @s container.26 minecraft:compass[minecraft:custom_data~{orange:{id:"target_locator",mode:"unbounded"}}] run function orange:target_locator/slot {slot:"container.26"}
execute if items entity @s container.27 minecraft:compass[minecraft:custom_data~{orange:{id:"target_locator",mode:"unbounded"}}] run function orange:target_locator/slot {slot:"container.27"}
execute if items entity @s container.28 minecraft:compass[minecraft:custom_data~{orange:{id:"target_locator",mode:"unbounded"}}] run function orange:target_locator/slot {slot:"container.28"}
execute if items entity @s container.29 minecraft:compass[minecraft:custom_data~{orange:{id:"target_locator",mode:"unbounded"}}] run function orange:target_locator/slot {slot:"container.29"}
execute if items entity @s container.30 minecraft:compass[minecraft:custom_data~{orange:{id:"target_locator",mode:"unbounded"}}] run function orange:target_locator/slot {slot:"container.30"}
execute if items entity @s container.31 minecraft:compass[minecraft:custom_data~{orange:{id:"target_locator",mode:"unbounded"}}] run function orange:target_locator/slot {slot:"container.31"}
execute if items entity @s container.32 minecraft:compass[minecraft:custom_data~{orange:{id:"target_locator",mode:"unbounded"}}] run function orange:target_locator/slot {slot:"container.32"}
execute if items entity @s container.33 minecraft:compass[minecraft:custom_data~{orange:{id:"target_locator",mode:"unbounded"}}] run function orange:target_locator/slot {slot:"container.33"}
execute if items entity @s container.34 minecraft:compass[minecraft:custom_data~{orange:{id:"target_locator",mode:"unbounded"}}] run function orange:target_locator/slot {slot:"container.34"}
execute if items entity @s container.35 minecraft:compass[minecraft:custom_data~{orange:{id:"target_locator",mode:"unbounded"}}] run function orange:target_locator/slot {slot:"container.35"}
execute if items entity @s weapon.offhand minecraft:compass[minecraft:custom_data~{orange:{id:"target_locator",mode:"unbounded"}}] run function orange:target_locator/slot {slot:"weapon.offhand"}

advancement revoke @s only orange:target_locator.init
