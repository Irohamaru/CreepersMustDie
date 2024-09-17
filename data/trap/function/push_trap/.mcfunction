scoreboard players add @s Interval 1
execute if score @s Interval matches 1..5 run function trap:push_trap/push
execute if score @s Interval matches 46 run data merge entity @s {start_interpolation:0,interpolation_duration:25,transformation:{translation:[0f,0.1f,0.2f]}}

execute if score @s Interval matches 100.. positioned ^ ^ ^1 positioned ~-0.75 ~-1 ~-0.75 if entity @e[tag=Enemy,dx=0.5,dy=1,dz=0.5] run scoreboard players set @s Interval 0
