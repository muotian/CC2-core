# as @s[type=player]

# 先載入儲存空間
function cc2:load_player_storage

# 修改文字
data modify storage orange:macro root set value {target:0}
scoreboard players operation $target orange.time_stealing.time = #gametime cc2
scoreboard players operation $target orange.time_stealing.time %= #24000 number
scoreboard players operation $target orange.time_stealing.time += @s orange.time_stealing.duration
scoreboard players operation $target orange.time_stealing.time %= #24000 number
execute store result storage orange:macro root.target int 1 run scoreboard players get $target orange.time_stealing.time
function orange:time_stealing/actionbar_time with storage orange:macro root

# 修改完成後，寫回玩家資料庫
function cc2:save_player_storage
