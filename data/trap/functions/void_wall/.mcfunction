execute unless score @s Interval matches 1.. positioned ^ ^ ^1 positioned ~-1 ~-1 ~-1 if entity @e[tag=Enemy,dx=1,dy=1,dz=1] run scoreboard players set @s Interval 1

execute if score @s Interval matches 1..50 run function trap:void_wall/active
execute if score @s Interval matches 1.. run scoreboard players add @s Interval 1

execute if score @s Interval matches 6000.. run data modify entity @s ArmorItems[3].tag.CustomModelData set value 120
execute if score @s Interval matches 6000.. run scoreboard players set @s Interval 0

execute unless score @s Interval matches 51.. run particle portal ^ ^ ^0.3 0.2 0.2 0.2 1 2 force
