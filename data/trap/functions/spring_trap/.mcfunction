scoreboard players add @s Interval 1
execute if score @s Interval matches 1 run function trap:spring_trap/spring
execute if score @s Interval matches 55 run data merge entity @s {start_interpolation:0,interpolation_duration:45,transformation:{left_rotation:[0f,0f,0f,1f],translation:[0f,1.05f,0f]}}

execute if score @s Interval matches 170.. positioned ~-0.75 ~ ~-0.75 if entity @e[tag=Enemy,dx=0.5,dy=0.5,dz=0.5] run scoreboard players set @s Interval 0
