execute unless items entity cc2-0-0-0-2 contents *[minecraft:custom_data~{cooldown:{active:1b}}] run return 0
data modify storage cooldown:callback macro.value set from entity cc2-0-0-0-2 item.components.minecraft:custom_data.cooldown.end_callback.value
execute if items entity cc2-0-0-0-2 contents *[minecraft:custom_data~{cooldown:{end_callback:{type:"item_modifier"}}}] run function cooldown:_system/callback/item_modifier with storage cooldown:callback macro
execute if items entity cc2-0-0-0-2 contents *[minecraft:custom_data~{cooldown:{end_callback:{type:"function"}}}] run function cooldown:_system/callback/function with storage cooldown:callback macro
