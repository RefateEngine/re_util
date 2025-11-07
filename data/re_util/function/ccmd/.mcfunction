# data modify storage re_util: in set value {height:1,width:1,command_r:"function re_util:ccmd/example",command_l:"function re_util:ccmd/example",tag:""}
# data modify storage re_util: in set value {height:1,width:1,command_r:"function re_util:ccmd/example",command_l:"function re_util:ccmd/example",tag:"testtag,testtag2"}

# タグ指定なし
execute if data storage re_util: in{tag:""} summon interaction run return run function re_util:ccmd/z/summon/ with storage re_util: in

# タグ指定あり
execute summon interaction run function re_util:ccmd/z/summon/with_tag with storage re_util: in

#re_util_ccmd_r
#re_util_ccmd_l
#re_util_ccmd_player