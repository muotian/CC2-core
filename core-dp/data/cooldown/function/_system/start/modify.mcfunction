$item replace entity cc2-0-0-0-2 contents from entity @s $(slot)
$data modify storage cooldown:callback macro set value {slot:"$(slot)",value:""}
execute if items entity cc2-0-0-0-2 contents *[minecraft:custom_data~{cooldown:{start_callback:{}}}] run function cooldown:_system/callback/start
$item modify entity @s $(slot) [{function:"minecraft:set_custom_model_data",colors:{values:[$(data)],mode:"replace_section",size:1}},{function:"minecraft:set_custom_data",tag:{cooldown:{target:$(target),active:1b}}}]
$schedule function cooldown:_system/schedule $(length)s append
