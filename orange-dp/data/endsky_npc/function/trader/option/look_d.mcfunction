scoreboard players set @s npc.look_option 3
data modify entity @e[limit=1,type=minecraft:item_display,tag=npc.trader_b,tag=npc.this] Glowing set value 0b
data modify entity @e[limit=1,type=minecraft:item_display,tag=npc.trader_s,tag=npc.this] Glowing set value 0b
data modify entity @e[limit=1,type=minecraft:text_display,tag=npc.trader_b,tag=npc.this] text set value '{"color":"black","translate":"npc.orange.common.buy"}'
data modify entity @e[limit=1,type=minecraft:text_display,tag=npc.trader_s,tag=npc.this] text set value '{"color":"black","translate":"npc.orange.common.sell"}'
data modify entity @e[limit=1,type=minecraft:text_display,tag=npc.trader_d,tag=npc.this] text set value '{"color":"black","text":"> ","extra":[{"translate":"npc.orange.common.talk"}]}'
data modify entity @e[limit=1,type=minecraft:text_display,tag=npc.trader_e,tag=npc.this] text set value '{"color":"black","translate":"npc.orange.common.exit"}'
