# as @s[type=player]

# 先載入儲存空間
function cc2:load_player_storage

# 修改文字
data remove storage cc2:player_storage root.cc2.actionbar[{id:"orange:time_icon"}]

# 修改完成後，寫回玩家資料庫
function cc2:save_player_storage
