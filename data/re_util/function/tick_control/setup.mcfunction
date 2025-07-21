# gametime+1
execute store result score #re_util_gametime re_util run time query gametime
scoreboard players add #re_util_gametime re_util 1

scoreboard players operation #re_util_tc2 re_util = #re_util_gametime re_util
scoreboard players operation #re_util_tc4 re_util = #re_util_gametime re_util
scoreboard players operation #re_util_tc10 re_util = #re_util_gametime re_util
scoreboard players operation #re_util_tc20 re_util = #re_util_gametime re_util
scoreboard players operation #re_util_tc100 re_util = #re_util_gametime re_util
scoreboard players operation #re_util_tc200 re_util = #re_util_gametime re_util

scoreboard players reset #re_util_gametime re_util