scoreboard players operation #re_util_slice re_util = #re_util_slice_base re_util
scoreboard players operation #re_util_slice re_util %= #10 const

data modify storage re_util: out prepend value 0
execute store result storage re_util: out[0] int 1 run scoreboard players get #re_util_slice re_util

scoreboard players operation #re_util_slice_base re_util /= #10 const

#0の場合は終了
execute unless score #re_util_slice_base re_util matches 0 run function re_util:slice/loop