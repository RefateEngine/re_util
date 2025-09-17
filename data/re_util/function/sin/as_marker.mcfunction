data modify entity @s Rotation[0] set from storage re_util: in
execute rotated as @s positioned 0.0 0.0 0.0 positioned ^ ^ ^5 run tp @s ~ ~ ~
execute store result storage re_util: out float 0.001 run data get entity @s Pos[0] -200
kill @s