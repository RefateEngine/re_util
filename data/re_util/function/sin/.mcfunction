#sin
#data modify storage re_util: in set value 45
execute summon marker run function re_util:sin/as_marker
tellraw @a {"storage":"re_util:","nbt":"out"}
