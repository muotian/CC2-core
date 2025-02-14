scoreboard objectives add orange.arg dummy
scoreboard objectives add orange.temp dummy

scoreboard objectives add orange.is_sprinting dummy
scoreboard objectives add orange.dead deathCount

scoreboard objectives add orange.effects.speed.duration dummy
scoreboard objectives add orange.effects.speed.amplifier dummy
scoreboard objectives add orange.effects.slowness.duration dummy
scoreboard objectives add orange.effects.slowness.amplifier dummy
scoreboard objectives add orange.effects.haste.duration dummy
scoreboard objectives add orange.effects.haste.amplifier dummy
scoreboard objectives add orange.effects.mining_fatigue.duration dummy
scoreboard objectives add orange.effects.mining_fatigue.amplifier dummy

scoreboard objectives add orange.gravity_cancelling.duration dummy

scoreboard objectives add orange.time_stealing.duration dummy
scoreboard objectives add orange.time_stealing.level dummy
scoreboard objectives add orange.time_stealing.level_rev dummy
scoreboard objectives add orange.time_stealing.level_add dummy
scoreboard objectives add orange.time_stealing.time dummy
scoreboard objectives add orange.time_stealing.negation dummy

scoreboard objectives add orange.time_stablizing.damage dummy

scoreboard objectives add orange.timeless_lily_pad.charge_time dummy
scoreboard objectives add orange.timeless_lily_pad.charging_slot dummy
scoreboard objectives add orange.timeless_lily_pad.id dummy
scoreboard objectives add orange.timeless_lily_pad.add_damage dummy

scoreboard objectives add orange.time_orb dummy

scoreboard objectives add orange.mob.muf_killed dummy
scoreboard objectives add orange.mob.muf_falling dummy
scoreboard objectives add orange.mob.muf_on_ground dummy
scoreboard objectives add orange.mob.muf_post_attack dummy
scoreboard objectives add orange.mob.muf_projectile_spawned_mainhand dummy
scoreboard objectives add orange.mob.muf_targeting_moved dummy
scoreboard objectives add orange.mob.muf_tick_mainhand dummy
scoreboard objectives add orange.mob.muf_tick_offhand dummy

scoreboard objectives add orange.misc.has_been_shot dummy

scoreboard objectives add orange.flame_of_finality.effect dummy
scoreboard objectives add orange.flame_of_finality.effect.timer dummy
scoreboard objectives add orange.flame_of_finality.eye_of_finality.animation dummy

scoreboard players set #-1 number -1
scoreboard players set #5 number 5
scoreboard players set #3 number 3
scoreboard players set #20 number 20
scoreboard players set #24000 number 24000

# 載入計時器 / load Timer
function orange:timer