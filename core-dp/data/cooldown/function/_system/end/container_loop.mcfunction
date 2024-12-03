$item replace entity cc2-0-0-0-2 contents from entity @s container.$(slot)
$data modify storage cooldown:callback macro set value {slot:"container.$(slot)",value:""}
execute if items entity cc2-0-0-0-2 contents *[minecraft:custom_data~{cooldown:{end_callback:{}}}] run function cooldown:_system/callback/end
$item modify entity @s container.$(slot) [{function:"minecraft:set_custom_model_data",colors:{values:[0],mode:"replace_section",size:1}},{function:"minecraft:set_custom_data",tag:{cooldown:{target:-1,active:0b}}}]
data remove storage cooldown:end container[-1]
data modify storage cooldown:end macro.slot set from storage cooldown:end container[-1]
execute if data storage cooldown:end container[] run function cooldown:_system/end/container_loop with storage cooldown:end macro
