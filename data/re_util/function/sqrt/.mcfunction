#> math:sqrt/
# 平方根を求めます。入力は 0.00000001 から 100000000 まで。結果は有効数字4桁です。
## 入力: 実数(double) => storage re_util: in
## 出力: 平方根(double) => storage re_util: out
### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

# 設定されない可能性のある値を初期化
scoreboard players set #re_util_sqrt1 re_util -1
data modify storage re_util: out set value 0d

# 入力に応じてスケール変更
execute store result score #re_util_sqrt2 re_util run data get storage re_util: in 1
execute if score #re_util_sqrt2 re_util matches ..999999 store result score #re_util_sqrt2 re_util run data get storage re_util: in 100
execute if score #re_util_sqrt2 re_util matches ..999999 store result score #re_util_sqrt2 re_util run data get storage re_util: in 10000
execute if score #re_util_sqrt2 re_util matches ..999999 store result score #re_util_sqrt2 re_util run data get storage re_util: in 1000000
execute if score #re_util_sqrt2 re_util matches ..999999 store result score #re_util_sqrt2 re_util run data get storage re_util: in 100000000
execute if score #re_util_sqrt2 re_util matches ..999999 store result score #re_util_sqrt2 re_util run data get storage re_util: in 10000000000
execute if score #re_util_sqrt2 re_util matches ..999999 store result score #re_util_sqrt2 re_util run data get storage re_util: in 1000000000000
execute if score #re_util_sqrt2 re_util matches ..999999 store result score #re_util_sqrt2 re_util run data get storage re_util: in 100000000000000
execute if score #re_util_sqrt2 re_util matches ..999999 store result score #re_util_sqrt2 re_util run data get storage re_util: in 10000000000000000

# 値に応じて1000の位設定
execute if score #re_util_sqrt2 re_util matches 1000000.. run scoreboard players set #re_util_sqrt1 re_util -1000
execute if score #re_util_sqrt2 re_util matches 4000000.. run scoreboard players set #re_util_sqrt1 re_util -2000
execute if score #re_util_sqrt2 re_util matches 9000000.. run scoreboard players set #re_util_sqrt1 re_util -3000
execute if score #re_util_sqrt2 re_util matches 16000000.. run scoreboard players set #re_util_sqrt1 re_util -4000
execute if score #re_util_sqrt2 re_util matches 25000000.. run scoreboard players set #re_util_sqrt1 re_util -5000
execute if score #re_util_sqrt2 re_util matches 36000000.. run scoreboard players set #re_util_sqrt1 re_util -6000
execute if score #re_util_sqrt2 re_util matches 49000000.. run scoreboard players set #re_util_sqrt1 re_util -7000
execute if score #re_util_sqrt2 re_util matches 64000000.. run scoreboard players set #re_util_sqrt1 re_util -8000
execute if score #re_util_sqrt2 re_util matches 81000000.. run scoreboard players set #re_util_sqrt1 re_util -9000

# 100の位を計算
scoreboard players operation #re_util_sqrt3 re_util = #re_util_sqrt1 re_util
scoreboard players operation #re_util_sqrt3 re_util *= #re_util_sqrt1 re_util
scoreboard players operation #re_util_sqrt3 re_util -= #re_util_sqrt2 re_util
execute store result storage re_util: sqrt int 0.005 run scoreboard players operation #re_util_sqrt3 re_util /= #re_util_sqrt1 re_util
execute store result score #re_util_sqrt3 re_util run data get storage re_util: sqrt 100
execute store result score #re_util_sqrt4 re_util run scoreboard players operation #re_util_sqrt1 re_util -= #re_util_sqrt3 re_util
# 予定より大きければ100引く
scoreboard players operation #re_util_sqrt4 re_util *= #re_util_sqrt1 re_util
execute if score #re_util_sqrt4 re_util > #re_util_sqrt2 re_util run scoreboard players add #re_util_sqrt1 re_util 100

# 10の位を計算
scoreboard players operation #re_util_sqrt3 re_util = #re_util_sqrt1 re_util
scoreboard players operation #re_util_sqrt3 re_util *= #re_util_sqrt1 re_util
scoreboard players operation #re_util_sqrt3 re_util -= #re_util_sqrt2 re_util
execute store result storage re_util: sqrt int 0.05 run scoreboard players operation #re_util_sqrt3 re_util /= #re_util_sqrt1 re_util
execute store result score #re_util_sqrt3 re_util run data get storage re_util: sqrt 10
execute store result score #re_util_sqrt4 re_util run scoreboard players operation #re_util_sqrt1 re_util -= #re_util_sqrt3 re_util
# 予定より大きければ10引く
scoreboard players operation #re_util_sqrt4 re_util *= #re_util_sqrt1 re_util
execute if score #re_util_sqrt4 re_util > #re_util_sqrt2 re_util run scoreboard players add #re_util_sqrt1 re_util 10

# 1の位を計算
scoreboard players operation #re_util_sqrt3 re_util = #re_util_sqrt1 re_util
scoreboard players operation #re_util_sqrt3 re_util *= #re_util_sqrt1 re_util
scoreboard players operation #re_util_sqrt3 re_util -= #re_util_sqrt2 re_util
execute store result storage re_util: sqrt int 0.5 run scoreboard players operation #re_util_sqrt3 re_util /= #re_util_sqrt1 re_util
execute store result score #re_util_sqrt3 re_util run data get storage re_util: sqrt 1
execute store result score #re_util_sqrt4 re_util run scoreboard players operation #re_util_sqrt1 re_util -= #re_util_sqrt3 re_util
# 予定より大きければ1引く
scoreboard players operation #re_util_sqrt4 re_util *= #re_util_sqrt1 re_util
execute if score #re_util_sqrt4 re_util > #re_util_sqrt2 re_util run scoreboard players add #re_util_sqrt1 re_util 1

# 入力に応じてスケール変更
execute store result score #re_util_sqrt2 re_util run data get storage re_util: in 1
execute if score #re_util_sqrt2 re_util matches 1000000..100000000 store result storage re_util: out double -1 run scoreboard players get #re_util_sqrt1 re_util
execute if score #re_util_sqrt2 re_util matches 10000..999999 store result storage re_util: out double -0.1 run scoreboard players get #re_util_sqrt1 re_util
execute if score #re_util_sqrt2 re_util matches 100..9999 store result storage re_util: out double -0.01 run scoreboard players get #re_util_sqrt1 re_util
execute if score #re_util_sqrt2 re_util matches 1..99 store result storage re_util: out double -0.001 run scoreboard players get #re_util_sqrt1 re_util

execute store result score #re_util_sqrt2 re_util run data get storage re_util: in 100000000
execute if score #re_util_sqrt2 re_util matches 1000000..99999999 store result storage re_util: out double -0.0001 run scoreboard players get #re_util_sqrt1 re_util
execute if score #re_util_sqrt2 re_util matches 10000..999999 store result storage re_util: out double -0.00001 run scoreboard players get #re_util_sqrt1 re_util
execute if score #re_util_sqrt2 re_util matches 100..9999 store result storage re_util: out double -0.000001 run scoreboard players get #re_util_sqrt1 re_util
execute if score #re_util_sqrt2 re_util matches 1..99 store result storage re_util: out double -0.0000001 run scoreboard players get #re_util_sqrt1 re_util

# スコアボード削除
scoreboard players reset #re_util_sqrt1
scoreboard players reset #re_util_sqrt2
scoreboard players reset #re_util_sqrt3
scoreboard players reset #re_util_sqrt4

data remove storage re_util: sqrt