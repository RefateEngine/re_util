advancement revoke @s only re_util:ccmd_r

# timestampの時間が一致しているものを探す
tag @s add re_util_ccmd_player

data modify storage re_util: ccmd.playerUUID set from entity @s UUID

execute store result score #re_util_ccmd_gametime re_util run time query gametime

execute as @e[type=interaction,tag=re_util_ccmd,distance=..10] run function re_util:ccmd/z/r/timestamp

# reset
tag @s remove re_util_ccmd_player
scoreboard players reset #re_util_ccmd_gametime re_util
data remove storage re_util: ccmd