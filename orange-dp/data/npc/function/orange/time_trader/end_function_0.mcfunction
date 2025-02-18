execute store result score $gave orange.temp run loot give @s loot orange:item/teleporter
execute if score $gave orange.temp matches 0 at @s run loot spawn ~ ~ ~ loot orange:item/teleporter
scoreboard players set $took_teleporter orange.npc_state 1
