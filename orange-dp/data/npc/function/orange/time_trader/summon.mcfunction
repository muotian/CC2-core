kill @e[tag=npc.orange.time_trader]

# 1. 召喚顯示本體，可為盔甲架或其他實體(如: 村民、貓等)
#    NPC顯示名稱將取用CustomName之內容
#    每次對話結束時NPC將轉回初始Rotation
summon minecraft:villager ~ ~ ~ {Tags:["npc.this","npc.tag","npc.figure","npc.orange.time_trader"],Rotation:[0.0f,0.0f],CustomName:'{"translate":"npc.orange.time_trader","fallback":"Time Trader"}',NoGravity:1b,Invulnerable:1b,NoAI:1b,Silent:1b,VillagerData:{level:6,profession:"minecraft:cartographer",type:"minecraft:plains"}}

# 2. 召喚互動實體，可依據顯示本體的碰撞箱大小調整互動實體的寬、高與位置，使其能夠完全包覆顯示本體
summon minecraft:interaction ~ ~-0.05 ~ {Tags:["npc.this","npc.tag","npc.orange.time_trader"],width:0.7f,height:2.1f}

# 3. 召喚替代名條，召喚高度同樣可依據本體之碰撞箱調整(建議高度: 本體碰撞箱高度 + 0.475)
summon minecraft:text_display ~ ~2.475 ~ {Tags:["npc.this","npc.tag","npc.name","npc.orange.time_trader"],alignment:"center",billboard:"center",background:-1073741825,transformation:{translation:[0.0f,-0.255f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}

function endsky_npc:common/summon {region:"orange",npc:"time_trader"}
