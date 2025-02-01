$item modify entity @s container.$(slot) orange:timeless_lily_pad.cooldown
$function cooldown:start_item_cooldown {slot:"container.$(slot)"}
data remove storage orange:timeless_lily_pad fix.container[-1]
data modify storage orange:timeless_lily_pad fix.macro.slot set from storage orange:timeless_lily_pad fix.container[-1]
execute if data storage orange:timeless_lily_pad fix.container[] run function orange:timeless_lily_pad/fix/container_loop with storage orange:timeless_lily_pad fix.macro
