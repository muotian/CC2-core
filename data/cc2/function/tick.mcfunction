execute store result score #difficulty cc2.env run difficulty
execute store result score #gametime cc2.env run time query gametime
execute as @a store result score @s cc2.health run data get entity @s Health 1000.0
execute as @a store result score @s cc2.absorption run data get entity @s AbsorptionAmount 1000.0
execute as @a store result score @s cc2.selected_slot run data get entity @s SelectedItemSlot 1.0
