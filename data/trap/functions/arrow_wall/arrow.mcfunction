scoreboard players add @s Interval 1

tp @s ^ ^ ^0.5

execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[tag=Enemy,dx=0,dy=0,dz=0] run function trap:arrow_wall/hit

execute unless block ^ ^ ^ #cursor:no_collision run kill @s[scores={Interval=2..}]

execute if score @s Interval matches 40 run kill @s
