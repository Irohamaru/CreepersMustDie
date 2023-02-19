function main:id/search_start
execute as @e[tag=Spring,scores={ParentID=0},distance=..3] at @s run tp @s ^ ^-0.02 ^-0.01
execute as @e[tag=Spring,scores={ParentID=0},distance=..3] store result entity @s Pose.Head[0] float 0.99999 run data get entity @s Pose.Head[0]
function main:id/search_end
