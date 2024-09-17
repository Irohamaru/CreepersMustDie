scoreboard players add @s Interval 1
data modify entity 0-0-0-0-0 Tags set from entity @s Tags

execute if block ^ ^ ^1.2 #cursor:no_collision run particle crit
execute if block ^ ^ ^1.2 #cursor:no_collision positioned ~-0.5 ~-0.5 ~-0.5 as @e[tag=Enemy,dx=0,dy=0,dz=0] run function trap:auto_ballista/hit
execute if block ^ ^ ^1.2 #cursor:no_collision run tp @s ^ ^ ^0.8

execute positioned as @s if block ^ ^ ^1.2 #cursor:no_collision run particle crit
execute positioned as @s if block ^ ^ ^1.2 #cursor:no_collision positioned ~-0.5 ~-0.5 ~-0.5 as @e[tag=Enemy,dx=0,dy=0,dz=0] run function trap:auto_ballista/hit
execute positioned as @s if block ^ ^ ^1.2 #cursor:no_collision run tp @s ^ ^ ^0.8

execute if score @s Interval matches 40.. run kill @e[tag=AB.ShootedArrow,distance=..0.01]

execute positioned as @s[tag=!InGround] if block ^ ^ ^1.2 #cursor:no_collision run playsound minecraft:item.trident.hit master @a ~ ~ ~ 0.4 0
execute positioned as @s[tag=!InGround] if block ^ ^ ^1.2 #cursor:no_collision run tag @s add InGround

data modify entity @s Tags set from entity 0-0-0-0-0 Tags
data modify entity 0-0-0-0-0 Tags set value []
