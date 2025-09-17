#tan
data modify storage re_util: in set value 15
execute summon marker run function re_util:tan/as_marker
tellraw @a {"storage":"re_util:","nbt":"out"}