scoreboard players add @s Interval 1

execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[tag=Enemy,dx=0,dy=0,dz=0] run function trap:arrow_wall/hit

execute if score @s Interval matches 5.. unless block ^ ^ ^-0.5 #cursor:no_collision run kill @e[tag=Arrow,distance=..0.01]

execute if score @s Interval matches 40 run kill @e[tag=Arrow,distance=..0.01]

tp @s ^ ^ ^0.5
