# 目線の先のブロック座標をコピーできるチャットを表示する

#限界距離*10
scoreboard players set #re_util_raycast_copy_range re_util 300

execute anchored eyes positioned ^ ^ ^ run function re_util:raycast_copy/z/loop

function re_util:raycast_copy/z/message with storage re_util: raycastCopy.out

data remove storage re_util: reycastCopy

scoreboard players reset #re_util_raycast_copy_range