execute unless block ~ ~ ~ air run return run function re_util:raycast_copy/z/get_coordinate

scoreboard players remove #re_util_raycast_copy_range re_util 1
execute if score #re_util_raycast_copy_range re_util matches 1.. positioned ^ ^ ^0.1 run function re_util:raycast_copy/z/loop