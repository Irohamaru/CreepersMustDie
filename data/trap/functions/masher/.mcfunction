scoreboard players add @s Interval 1
execute if score @s Interval matches 1..10 run function trap:masher/mash
execute if score @s Interval matches 56..75 run tp @s ~ ~0.12 ~

execute if score @s Interval matches 11..55 positioned ~-1 ~0.7 ~-1 as @e[tag=Enemy,dx=1,dy=1,dz=1] at @s run function trap:masher/apply
execute if score @s Interval matches 11..55 positioned ~-1 ~-49.3 ~-1 as @e[type=wandering_trader,dx=1,dy=1,dz=1] at @s run function trap:masher/apply

execute if score @s Interval matches 180.. positioned ^ ^ ^1 positioned ~-0.75 ~-1 ~-0.75 if entity @e[tag=Enemy,dx=0.5,dy=1,dz=0.5] run scoreboard players set @s Interval 0
