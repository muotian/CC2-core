execute store result score #difficulty cc2 run difficulty
execute store result score #gametime cc2 run time query gametime

# Player NBT is outdated.
scoreboard players set #loaded_player_nbt cc2 0

execute as @a as @s run function cc2.internal:player_tick
