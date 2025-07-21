data remove storage re_util: click_cmd.check
data modify storage re_util: click_cmd.interactionUUID set from entity @s interaction.player

execute store result storage re_util: click_cmd.check byte 1 run data modify storage re_util: click_cmd.interactionUUID set from storage re_util: click_cmd.playerUUID
execute if data storage re_util: click_cmd{check:false} run function re_util:click_cmd/z/r/run with entity @s data