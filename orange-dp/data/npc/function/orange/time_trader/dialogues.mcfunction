# 清空所有內容
data modify storage npc:orange time_trader set value {}

# 設定為商人NPC，商人會比一般NPC多一些設定可以操作
data modify storage npc:orange time_trader.Trader set value 1b

data modify storage npc:orange time_trader.NormalRandom set value 0b

# 清空列表
data modify storage npc:orange time_trader.Normal set value []
data modify storage npc:orange time_trader.Normal append value \
{ \
  Texts:[ \
    '{"translate":"npc.orange.time_trader.normal.0.0"}', \
    '{"translate":"npc.orange.time_trader.normal.0.1"}', \
    '{"translate":"npc.orange.time_trader.normal.0.2"}', \
    '{"translate":"npc.orange.time_trader.normal.0.3"}', \
    '{"translate":"npc.orange.time_trader.normal.0.4"}', \
    '{"translate":"npc.orange.time_trader.normal.0.5"}' \
  ], \
  Once: 1b \
}
data modify storage npc:orange time_trader.Normal append value \
{ \
  Texts: [ \
    '{"translate":"npc.orange.time_trader.normal.1.0"}' \
  ] \
}
# ...

data modify storage npc:orange time_trader.TraderNormalRandom set value 0b

# 清空列表
data modify storage npc:orange time_trader.TraderNormal set value []
data modify storage npc:orange time_trader.TraderNormal append value \ 
{ \
  Texts: [ \
    '{"translate":"npc.orange.time_trader.trader_normal.0.0"}' \
  ], \
  Options: [ \
    { \
      Option: '{"translate":"npc.orange.time_trader.trader_normal.0.option_0"}', \
      React: [ \
        '{"translate":"npc.orange.time_trader.trader_normal.0.option_0.0"}', \
        '{"translate":"npc.orange.time_trader.trader_normal.0.option_0.1"}', \
        '{"translate":"npc.orange.time_trader.trader_normal.0.option_0.2"}', \
        '{"translate":"npc.orange.time_trader.trader_normal.0.option_0.3"}', \
        '{"translate":"npc.orange.time_trader.trader_normal.0.option_0.4"}', \
        '{"translate":"npc.orange.time_trader.trader_normal.0.1"}', \
      ] \
    }, \
    { \
      Option: '{"translate":"npc.orange.time_trader.trader_normal.0.option_1"}', \
      React: [ \
        '{"translate":"npc.orange.time_trader.trader_normal.0.option_1.0"}', \
        '{"translate":"npc.orange.time_trader.trader_normal.0.option_1.1"}', \
        '{"translate":"npc.orange.time_trader.trader_normal.0.option_1.2"}', \
        '{"translate":"npc.orange.time_trader.trader_normal.0.option_1.3"}', \
        '{"translate":"npc.orange.time_trader.trader_normal.0.option_1.4"}', \
        '{"translate":"npc.orange.time_trader.trader_normal.0.option_1.5"}', \
        '{"translate":"npc.orange.time_trader.trader_normal.0.option_1.6"}', \
        '{"translate":"npc.orange.time_trader.trader_normal.0.option_1.7"}', \
        '{"translate":"npc.orange.time_trader.trader_normal.0.1"}' \
      ] \
    }, \
    { \
      Option: '{"translate":"npc.orange.time_trader.trader_normal.0.option_2"}', \
      React: [ \
        '{"translate":"npc.orange.time_trader.trader_normal.0.option_2.0"}', \
        '{"translate":"npc.orange.time_trader.trader_normal.0.option_2.1"}', \
        '{"translate":"npc.orange.time_trader.trader_normal.0.1"}', \
      ] \
    }, \
    { \
      Option: '{"translate":"npc.orange.time_trader.trader_normal.0.option_3"}', \
      React: [ \
        '{"translate":"npc.orange.time_trader.trader_normal.0.option_3.0"}', \
        '{"translate":"npc.orange.time_trader.trader_normal.0.1"}', \
      ] \
    } \
  ] \
}
# ...

data modify storage npc:orange time_trader.Exit set value {Texts:['{"translate":"npc.orange.time_trader.exit.0"}']}

# 清空列表
data modify storage npc:orange time_trader.Idle set value []
# ...

# 設定對話音效池 (若無此設定，默認為村民嘀咕聲)
data modify storage npc:orange time_trader.SoundPool set value []

# 清空列表
data modify storage npc:orange time_trader.Buy set value []
# Buy和Sell列表的內容，會直接被填入開啟商店介面時召喚的村民，因此當作村民的nbt來填寫即可，除此之外可用Name引用戰利品表的內容(建議為單項物品之戰利品表)來取代id和tag
# 關於maxUses，若是填上2147483647，則代表可無限購買
data modify storage npc:orange time_trader.Buy append value {buy:{Name:"orange:item/time_currency",count:1},sell:{id:"minecraft:baked_potato",count:8},maxUses:2147483647}
data modify storage npc:orange time_trader.Buy append value {buy:{Name:"orange:item/time_currency",count:1},sell:{id:"minecraft:bread",count:8},maxUses:2147483647}
data modify storage npc:orange time_trader.Buy append value {buy:{Name:"orange:item/time_currency",count:1},sell:{id:"minecraft:cooked_porkchop",count:6},maxUses:2147483647}
data modify storage npc:orange time_trader.Buy append value {buy:{Name:"orange:item/time_currency",count:2},sell:{Name:"orange:weapon/time_releasing_stick",count:1},maxUses:2147483647}
data modify storage npc:orange time_trader.Buy append value {buy:{Name:"orange:item/time_currency",count:3},sell:{id:"minecraft:orange_bundle",count:1},maxUses:2147483647}
data modify storage npc:orange time_trader.Buy append value {buy:{Name:"orange:item/time_currency",count:4},sell:{id:"minecraft:bow",components:{"minecraft:enchantments":{levels:{"minecraft:punch":1}}},count:1},maxUses:2147483647}
data modify storage npc:orange time_trader.Buy append value {buy:{Name:"orange:item/time_currency",count:6},sell:{Name:"orange:weapon/time_stealing_sword",count:1},maxUses:2147483647}
data modify storage npc:orange time_trader.Buy append value {buy:{Name:"orange:item/time_currency",count:8},sell:{Name:"orange:weapon/time_explosion_stick",count:1},maxUses:2147483647}
data modify storage npc:orange time_trader.Buy append value {buy:{Name:"orange:item/time_currency",count:12},sell:{Name:"orange:weapon/time_impulse_axe",count:1},maxUses:2147483647}
data modify storage npc:orange time_trader.Buy append value {buy:{Name:"orange:item/time_currency",count:8},sell:{Name:"orange:enchanted_book/edge_protection_1",count:1},maxUses:2147483647}
data modify storage npc:orange time_trader.Buy append value {buy:{Name:"orange:item/time_currency",count:8},sell:{Name:"orange:enchanted_book/time_protection_1",count:1},maxUses:2147483647}
data modify storage npc:orange time_trader.Buy append value {buy:{Name:"orange:item/time_currency",count:8},sell:{Name:"orange:enchanted_book/time_stablizing",count:1},maxUses:2147483647}
data modify storage npc:orange time_trader.Buy append value {buy:{Name:"orange:item/time_currency",count:8},sell:{Name:"orange:enchanted_book/time_punishment_1",count:1},maxUses:2147483647}
data modify storage npc:orange time_trader.Buy append value {buy:{Name:"orange:item/time_currency",count:16},sell:{Name:"orange:enchanted_book/time_stealing_1",count:1},maxUses:2147483647}
data modify storage npc:orange time_trader.Buy append value {buy:{Name:"orange:item/time_currency",count:16},sell:{Name:"orange:enchanted_book/time_releasing",count:1},maxUses:2147483647}
# ...

# 清空列表
data modify storage npc:orange time_trader.Sell set value []
data modify storage npc:orange time_trader.Sell append value {buy:{Name:"orange:item/time_orb",count:16},sell:{Name:"orange:item/time_currency",count:1},maxUses:2147483647}
data modify storage npc:orange time_trader.Sell append value {buy:{id:"minecraft:bone",count:24},sell:{Name:"orange:item/time_currency",count:1},maxUses:2147483647}
data modify storage npc:orange time_trader.Sell append value {buy:{id:"minecraft:rotten_flesh",count:32},sell:{Name:"orange:item/time_currency",count:1},maxUses:2147483647}
# ...
