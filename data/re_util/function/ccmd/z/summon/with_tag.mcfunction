$data merge entity @s {height:$(height)f,width:$(width)f,Tags:["re_util_ccmd",$(tag)]}

data modify entity @s data.ccmd_r set from storage re_util: in.command_r
data modify entity @s data.ccmd_l set from storage re_util: in.command_l

