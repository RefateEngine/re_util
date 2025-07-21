scoreboard objectives add re_util dummy

execute unless score #re_util_tc2 re_util = #re_util_tc2 re_util run function re_util:tick_control/setup

# function re_util:const/set