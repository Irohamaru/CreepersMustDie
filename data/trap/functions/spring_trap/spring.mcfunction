function main:id/search_start
execute as @e[tag=Spring,scores={ParentID=0},distance=..3] run data modify entity @s Pose.Head set value [45f,0f,0f]
execute as @e[tag=Spring,scores={ParentID=0},distance=..3] run tp @s ^ ^-0.46 ^1.33 ~ ~
function main:id/search_end
data modify storage mob: Damage set from storage trap: SpringTrap
execute positioned ~-1 ~ ~-1 as @e[tag=Enemy,dx=1,dy=1,dz=1] positioned as @s rotated ~ -40 run function mob:damage/
playsound minecraft:block.anvil.place master @a ~ ~ ~ 0.1 2
playsound minecraft:item.trident.return master @a ~ ~ ~ 1 2
