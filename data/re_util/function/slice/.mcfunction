# intをlistへ変換
# example
# re_util: in 123456
# re_util: out [1,2,3,4,5,6]

data modify storage re_util: out set value []
execute store result score #re_util_slice_base re_util run data get storage re_util: in

function re_util:slice/loop

scoreboard players reset #re_util_slice
scoreboard players reset #re_util_slice_base
