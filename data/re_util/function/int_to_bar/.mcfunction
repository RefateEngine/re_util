#intを1と0を合わせて100個のバーに変換する
execute store result score #re_util_int2bar_value re_util run data get storage re_util: in.value
execute store result score #re_util_int2bar_max re_util run data get storage re_util: in.max

data modify storage re_util: out set value []

# valueはmaxの何%なのか計算する
scoreboard players operation #re_util_int2bar_value re_util *= #100 const
scoreboard players operation #re_util_int2bar_value re_util /= #re_util_int2bar_max re_util

# 100 - value で残りの%が出る
scoreboard players set #re_util_int2bar_max re_util 100
scoreboard players operation #re_util_int2bar_max re_util -= #re_util_int2bar_value re_util

# これでvalue + max = 100になりました

# outに0と1を入れていきます
function re_util:int_to_bar/z/write/true/
function re_util:int_to_bar/z/write/false/

# reset
scoreboard players reset #re_util_int2bar_value re_util
scoreboard players reset #re_util_int2bar_max re_util

# #tellraw @a {"storage":"re_util:","nbt":out,interpret:true}