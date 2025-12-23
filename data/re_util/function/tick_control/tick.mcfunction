execute store result score #re_util_gametime re_util run time query gametime

data modify storage re_util: tickCTRL set value {2:false,4:false,10:false,20:false,100:false,200:false,tick-0:false,tick-1:false,tick-2:false,tick-3:false,tick-4:false,tick-5:false,tick-6:false,tick-7:false,tick-8:false,tick-9:false}

# 前回設定した時間と一致していたら#を1にして次の時間を設定する
execute store success storage re_util: tickCTRL.2 byte 1 if score #re_util_gametime re_util = #re_util_tc2 re_util run scoreboard players add #re_util_tc2 re_util 2
execute store success storage re_util: tickCTRL.4 byte 1 if score #re_util_gametime re_util = #re_util_tc4 re_util run scoreboard players add #re_util_tc4 re_util 4
execute store success storage re_util: tickCTRL.10 byte 1 if score #re_util_gametime re_util = #re_util_tc10 re_util run scoreboard players add #re_util_tc10 re_util 10
execute store success storage re_util: tickCTRL.20 byte 1 if score #re_util_gametime re_util = #re_util_tc20 re_util run scoreboard players add #re_util_tc20 re_util 20
execute store success storage re_util: tickCTRL.100 byte 1 if score #re_util_gametime re_util = #re_util_tc100 re_util run scoreboard players add #re_util_tc100 re_util 100
execute store success storage re_util: tickCTRL.200 byte 1 if score #re_util_gametime re_util = #re_util_tc200 re_util run scoreboard players add #re_util_tc200 re_util 200

# 1~10の分散処理
scoreboard players operation #re_util_gametime re_util %= #10 const

execute store success storage re_util: tickCTRL.tick-0 byte 1 if score #re_util_gametime re_util matches 0
execute store success storage re_util: tickCTRL.tick-1 byte 1 if score #re_util_gametime re_util matches 1
execute store success storage re_util: tickCTRL.tick-2 byte 1 if score #re_util_gametime re_util matches 2
execute store success storage re_util: tickCTRL.tick-3 byte 1 if score #re_util_gametime re_util matches 3
execute store success storage re_util: tickCTRL.tick-4 byte 1 if score #re_util_gametime re_util matches 4
execute store success storage re_util: tickCTRL.tick-5 byte 1 if score #re_util_gametime re_util matches 5
execute store success storage re_util: tickCTRL.tick-6 byte 1 if score #re_util_gametime re_util matches 6
execute store success storage re_util: tickCTRL.tick-7 byte 1 if score #re_util_gametime re_util matches 7
execute store success storage re_util: tickCTRL.tick-8 byte 1 if score #re_util_gametime re_util matches 8
execute store success storage re_util: tickCTRL.tick-9 byte 1 if score #re_util_gametime re_util matches 9

scoreboard players reset #re_util_gametime re_util