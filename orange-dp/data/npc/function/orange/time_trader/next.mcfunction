advancement revoke @s only npc:orange/time_trader/next

tag @e[tag=npc.orange.time_trader] add npc.this
function endsky_npc:common/next
tag @e[tag=npc.this] remove npc.this
