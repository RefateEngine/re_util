$data merge entity @s {height:$(height)f,width:$(width)f,Tags:["re_util_click_cmd"]}

data modify entity @s data.click_cmd_r set from storage re_util: in.command_r
data modify entity @s data.click_cmd_l set from storage re_util: in.command_l

