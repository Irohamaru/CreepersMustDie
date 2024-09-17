scoreboard players set #Success _ 0
execute unless block ^ ^ ^ #cursor:no_collision run function trap:fireball/explode
execute if score #Success _ matches 0 positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[tag=Mob,dx=0,dy=0,dz=0] positioned ~0.5 ~0.5 ~0.5 run function trap:fireball/explode
execute if score #Success _ matches 0 if score @s Interval matches ..0 run function trap:fireball/explode

tp @s ^ ^ ^1
execute on passengers rotated as @s run tp @s ~ ~ ~ ~5 ~

scoreboard players remove @s Interval 1
