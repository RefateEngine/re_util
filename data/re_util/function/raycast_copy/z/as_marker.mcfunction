data modify storage re_util: reycastCopy.Pos set from entity @s Pos

data modify storage re_util: raycastCopy.out set value {x:0,y:0,z:0}
execute store result storage re_util: raycastCopy.out.x int 1 run data get storage re_util: reycastCopy.Pos[0]
execute store result storage re_util: raycastCopy.out.y int 1 run data get storage re_util: reycastCopy.Pos[1]
execute store result storage re_util: raycastCopy.out.z int 1 run data get storage re_util: reycastCopy.Pos[2]

kill @s