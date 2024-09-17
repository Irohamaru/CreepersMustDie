scoreboard players add @s Interval 1

execute if score @s Interval matches 4..10 run function trap:masher/mash

execute if score @s Interval matches 1 run data merge entity @s {start_interpolation:0,interpolation_duration:10,transformation:{translation:[0f,-2.65f,0f]}}
execute if score @s Interval matches 56 run data merge entity @s {start_interpolation:0,interpolation_duration:20,transformation:{translation:[0f,-0.25f,0f]}}

execute if score @s Interval matches 4..55 positioned ~-1 ~2.5 ~-1 as @e[tag=Enemy,dx=1,dy=1,dz=1] at @s run function trap:masher/apply
execute if score @s Interval matches 4..55 positioned ~-1 ~-52.5 ~-1 as @e[type=wandering_trader,dx=1,dy=1,dz=1] at @s run function trap:masher/apply

execute if score @s Interval matches 180.. positioned ~-1 ~-2.5 ~-1 if entity @e[tag=Enemy,dx=1,dy=1,dz=1] run scoreboard players set @s Interval 0
