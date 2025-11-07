data remove storage re_util: ccmd.check
data modify storage re_util: ccmd.interactionUUID set from entity @s interaction.player

execute store result storage re_util: ccmd.check byte 1 run data modify storage re_util: ccmd.interactionUUID set from storage re_util: ccmd.playerUUID
execute if data storage re_util: ccmd{check:false} run function re_util:ccmd/z/r/run with entity @s data