advancement revoke @s only cooldown:utils/using_on_use
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{cooldown:{on_use:1b}}] unless items entity @s weapon.mainhand *[minecraft:custom_data~{cooldown:{active:1b}}] run return run function cooldown:start_item_cooldown {slot:"weapon.mainhand"}
execute if items entity @s weapon.offhand *[minecraft:custom_data~{cooldown:{on_use:1b}}] unless items entity @s weapon.offhand *[minecraft:custom_data~{cooldown:{active:1b}}] run function cooldown:start_item_cooldown {slot:"weapon.offhand"}
