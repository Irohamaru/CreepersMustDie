data modify storage mob: Damage set from storage trap: VoidWall
execute positioned ^ ^ ^1 positioned ~-1 ~-1 ~-1 as @e[tag=Enemy,dx=1,dy=1,dz=1] positioned ~1 ~1 ~1 positioned ^ ^ ^-3 facing entity @s feet facing ^ ^ ^-1 run function mob:damage/

execute if score @s Interval matches 1 run playsound minecraft:block.portal.ambient master @a ~ ~ ~ 1 1.6
execute if score @s Interval matches 1 run playsound minecraft:block.portal.ambient master @a ~ ~ ~ 1 1.65

particle portal ^ ^ ^0.3 0.2 0.2 0.2 1 10 force

execute if score @s Interval matches 50 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 121
