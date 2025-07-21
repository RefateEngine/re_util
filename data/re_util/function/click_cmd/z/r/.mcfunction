advancement revoke @s only re_util:click_cmd_r

# timestampの時間が一致しているものを探す
tag @s add re_util_click_cmd_player

data modify storage re_util: click_cmd.playerUUID set from entity @s UUID

execute store result score #re_util_ccmd_gametime re_util run time query gametime

execute as @e[type=interaction,tag=re_util_click_cmd,distance=..10] run function re_util:click_cmd/z/r/timestamp

# reset
tag @s remove re_util_click_cmd_player
scoreboard players reset #re_util_ccmd_gametime re_util
data remove storage re_util: click_cmd