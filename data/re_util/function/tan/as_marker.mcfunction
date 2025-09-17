data modify entity @s Rotation[0] set from storage re_util: in
execute rotated as @s positioned 0.0 0.0 0.0 positioned ^ ^ ^5 run tp @s ~ ~ ~
execute store result score #re_util_tan1 re_util run data get entity @s Pos[2] -20000
execute store result score #re_util_tan2 re_util run data get entity @s Pos[0] 20000000
execute store result storage re_util: out float 0.001 run scoreboard players operation #re_util_tan2 re_util /= #re_util_tan1 re_util
scoreboard players reset #re_util_tan1
scoreboard players reset #re_util_tan2
kill @s