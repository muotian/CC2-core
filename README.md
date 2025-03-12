# Cartocraft 2 Core

- `core-dp`
- `core-rp`

# Orange Datapack Content List

## Special Effect

「竊時」
* 影響移動速度、挖掘速度、攻擊速度這三項數值
* 分為正面負面各五個等級，正面等級越高速度越快；負面等級越高速度越慢，正負面等級不會同時存在
* 無論效果等級，持續時間固定為5秒，持續時間結束後效果消失
* 每次獲得新效果時皆會重置持續時間
* 若獲得新效果時已受其同向之效果影響，則新效果等級將累加至原效果等級上，以等級5為上限
* 若獲得新效果時仍受其反向之效果影響，則將以新效果等級的兩倍扣除原效果等級，扣至負數時以原效果之反向效果計算
* 通常由特殊道具的攻擊行為觸發，攻擊者獲得一定等級的正面效果，受擊者獲得相同等級的負面效果

## Enchantments

附帶附魔說明的附魔書由以下指令獲得  

「利刃防護I」: 提供對來源於斧或刃的進戰攻擊提供減傷，數值同火焰保護等附魔  
`/loot give @s loot orange:enchanted_book/edge_protection_1`  
`/loot give @s loot orange:enchanted_book/edge_protection_2`  
`/loot give @s loot orange:enchanted_book/edge_protection_3`  
`/loot give @s loot orange:enchanted_book/edge_protection_4`  

時之衝擊: 以此附魔於疾跑或滑翔狀態時攻擊時，進行等級5的「竊時」  
`/loot give @s loot orange:enchanted_book/time_impulse`  

異時之防護: 若傷害來源受「竊時」之正負面效果影響，提供減傷，數值同火焰保護等附魔  
`/loot give @s loot orange:enchanted_book/time_protection_1`  
`/loot give @s loot orange:enchanted_book/time_protection_2`  
`/loot give @s loot orange:enchanted_book/time_protection_3`  
`/loot give @s loot orange:enchanted_book/time_protection_4`  

異時之懲戒: 若攻擊對象受「竊時」之正負面效果影響，造成額外傷害，數值同剋星類附魔  
`/loot give @s loot orange:enchanted_book/time_punishment_1`  
`/loot give @s loot orange:enchanted_book/time_punishment_2`  
`/loot give @s loot orange:enchanted_book/time_punishment_3`  
`/loot give @s loot orange:enchanted_book/time_punishment_4`  
`/loot give @s loot orange:enchanted_book/time_punishment_5`  

時之釋擊: 若攻擊對象受到「竊時」之負面效果，或緩速藥水效果影響，造成擊退，擊退幅度與該效果等級正相關  
`/loot give @s loot orange:enchanted_book/time_releasing`  

時間穩定化: 四件裝備都有此附魔時才有效果，使用者將無法主動或被動觸發任何「竊時」相關效果，受到負面「竊時」時以扣除盔甲耐久作為替代  
`/loot give @s loot orange:enchanted_book/time_stablizing`  

時之竊擊: 進行與附魔等級相同等級的「竊時」  
`/loot give @s loot orange:enchanted_book/time_stealing_1`  
`/loot give @s loot orange:enchanted_book/time_stealing_2`  
`/loot give @s loot orange:enchanted_book/time_stealing_3`  
`/loot give @s loot orange:enchanted_book/time_stealing_4`  
`/loot give @s loot orange:enchanted_book/time_stealing_5`  

## Armors

特殊裝備由以下指令獲得  

防刃套裝: 附有「利刃防護 I」的全套皮甲，耐久度為普通皮甲之三倍  
`/loot give @s loot orange:armor/edge_proof_armor/set`  

硬皮套裝: 防禦力高於普通皮甲但會降低移動速度的全套皮甲，耐久度為普通皮甲之二倍  
`/loot give @s loot orange:armor/hard_leather_armor/set`  

時異護服套裝: 附有「異時之防護 I」的全套皮甲，耐久度為普通皮甲之三倍  
`/loot give @s loot orange:armor/tasuit/set`  

時護服套裝: 附有「時間穩定化」的全套皮甲，耐久度為普通皮甲之三倍  
`/loot give @s loot orange:armor/time_suit/set`  

## Weapons

特殊武器由以下指令獲得  

爆擊之棍: 攻擊數值相當於空手，無耐久度，擁有「時之竊擊 I」附魔，若攻擊對象處於負面5級「竊時」狀態，額外在其位置造成一次僅傷害實體的爆炸  
`/loot give @s loot orange:weapon/time_explosion_stick`  

衝擊之斧: 攻擊力8，耐久度為兩倍石斧，擁有「時之衝擊」附魔，可用於瞬間達成大量「竊時」  
`/loot give @s loot orange:weapon/time_impulse_axe`  

釋擊之棍: 攻擊數值相當於空手，無耐久度，擁有「時之釋擊」附魔，可與其他物品搭配使用以擊退敵人  
`/loot give @s loot orange:weapon/time_releasing_stick`  

竊擊之劍: 數值與石劍相同，擁有「時之竊擊 I」附魔  
`/loot give @s loot orange:weapon/time_stealing_sword`  

永恆之荷葉: 攻擊力2.5，攻速0.8，擁有「時之竊擊 I」、「異時之懲戒 V」附魔，右鍵蓄力後釋放可當成飛盤發射，向前飛行一段距離後折返並鎖定使用者方向繼續飛行，飛行時以其攻擊力及原有的兩種附魔效果傷害沿途的敵人  
`/loot give @s loot orange:weapon/timeless_lily_pad`  

## Items

特殊物品由以下指令獲得  

謊言(假蛋糕): 食物，食用時間極短，不補充飽食度，僅補充微量隱藏飽食度，60%機率使食用者中毒5秒(此效果與毒馬鈴薯相同)  
`/loot give @s loot orange:item/cake_lie`  

附魔蘋果: 食物，基本數值與蘋果相同，額外造成半秒鐘的飽食I效果及7秒鐘的噁心I效果  
`/loot give @s loot orange:item/enchanted_apple`  

時之結晶: 食物，此區怪物之共同掉落物，落地時會在十秒內消失。食用時間稍短，其餘數值為歌萊果的一半，食用後使「竊時」的正負效果反轉、速度與緩速藥水效果反轉  
`/loot give @s loot orange:item/time_orb`  

失重之箭: 箭矢，使射中的目標失去重力10秒  
`/loot give @s loot orange:item/gravity_cancelling_arrow`  

釋時之箭: 箭矢，對射中的目標適用「時之釋擊」附魔的能力  
`/loot give @s loot orange:item/time_releasing_arrow`  

竊時之箭: 箭矢，對射中的目標適用「時之竊擊 I」附魔的能力  
`/loot give @s loot orange:item/time_stealing_arrow`  

滯留 竊時藥水: 滯留藥水，以8秒冷卻取代物品消耗，投擲落地後生成持續3秒並向外擴張的藥水雲，其中的敵人每秒受到負面「竊時」效果並會回饋給投擲者相應的正面「竊時」效果；而其中的友軍則額外受到正面「竊時」效果  
`/loot give @s loot orange:item/time_stealing_potion`  

無重力竿: 釣竿，能以兩倍速拋出浮標，鉤住生物並回拉時，使其失去重力10秒  
`/loot give @s loot orange:item/no_gravity_rod`  

銹蝕錨碎片: 拿在手上時，提供80%抗擊退(MC顯示為+8抗擊退)，僅可承受50次攻擊便會損毀  
`/loot give @s loot orange:item/anchor_scrap`  

未知殘板: 拿在手上時，提供+3盔甲值，僅可承受121次攻擊便會損毀  
`/loot give @s loot orange:item/plate_scrap`  

能量中繼器: 使用後，重置一次使用者的「竊時」持續時間，不影響其等級，10秒冷卻，可使用100次  
`/loot give @s loot orange:item/energy_relay`  

護盾產生器: 未在冷卻狀態並手持時，使受到的一次近戰傷害減免80%，觸發後立即進入10秒冷卻狀態，可使用100次  
`/loot give @s loot orange:item/shield_generator`  

神奇海螺: 使用後之60秒內，手持此物品可使水中移動速度及挖掘速度變為與地上相同，可使用20次  
`/loot give @s loot orange:item/magic_conch`  

神秘礦石: 拿在手上時，以隨機間隔對周圍實體(包括持有者)造成傷害，盔甲欄每有一欄有物品則減少25%受到傷害的機率，全穿將完全不受影響  
`/loot give @s loot orange:item/mysterious_ore`  

時間吸收器: 拿在手上時，使用者造成的每次傷害皆會進行等級1「竊時」  
`/loot give @s loot orange:item/time_absorber`  

時間增幅器: 拿在手上時，若使用者有「竊時」狀態則給予等同於力量I的加攻效果  
`/loot give @s loot orange:item/time_amplifier`  

時間觸媒: 拿在手上時，若進行「竊時」則有20%機率將其效果提升一級  
`/loot give @s loot orange:item/time_catalyst`  

時間干涉儀: 拿在手上時，若遭「竊時」則有20%機率將其無效  
`/loot give @s loot orange:item/time_interferometer`

隨身傳送裝置: 廢棄(?)，需要存在指定實體才能使用，原用於傳送往返交易用村民身邊  
`/loot give @s loot orange:item/teleporter`  

時間貨幣: 廢棄(?)，原作為與交易用村民交易之貨幣  
`/loot give @s loot orange:item/time_currency`

目標定位器: 廢棄，原用於指向羊毛位置，需要在該位置放置指定實體才能使用
`/loot give @s loot orange:item/target_locator`

## Spawners

所有可放置的生怪磚的物品由此指令獲得  
`/function orange:all_spawners`  

飛濺 緩速藥水: 生成飛濺緩速藥水實體，玩家可利用時之結晶的效果將其反轉以獲得加速  
迅捷滑行者: 殭屍，離目標一定距離時會在原地上升到一定高度後開始向目標滑翔，手上裝備有「衝擊之斧」，傷害極高，低機率掉落其武器  
時輻異方怪: 岩漿立方怪，分為大中小三種，頭上有裝飾，跟原版怪一樣會分裂  
護時者: 殭屍，全身裝備「時護服」套裝，因此免疫「竊時」，低機率掉落其盔甲  
時輻異變體: 沉屍，朝目標移動的同時會吐出「時輻寄生體」，死亡時亦會生成三隻「時輻寄生體」，放著不管會有點麻煩  
時輻寄生體: 終界螨，由「時輻異變體」生成，生成十秒後會自動消失  
時空遊俠: 骷髏，隨機發射此區的三種特殊箭矢，單兵偶爾也能夠造成強力的干擾，有機率掉落特殊箭矢  
釋時者: 小殭屍，手上裝備有「釋擊之棍」，與其他怪物搭配時能擊退玩家，低機率掉落其武器  
竊時者: 屍殼，手上裝備有「竊擊之劍」，因此攻擊不會造成飢餓，低機率掉落其武器  
時間女巫: 女巫，僅投擲「滯留 竊時藥水」，於怪群中有輔助效果，低機率掉落該藥水  
