scoreboard players set #Success _ 0
execute unless block ^ ^ ^ #cursor:no_collision run function trap:fireball/explode
execute if score #Success _ matches 0 positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[tag=Mob,dx=0,dy=0,dz=0] run function trap:fireball/explode
execute if score #Success _ matches 0 if score @s Interval matches ..0 run function trap:fireball/explode

particle flame ~ ~ ~ 0.2 0.2 0.2 0.12 2 force
particle dust{color:[100000000,100,0],scale:2} ^ ^ ^ 0.2 0.2 0.2 1 1 force

tp @s ^ ^ ^1
execute on passengers rotated as @s run tp @s ~ ~ ~ ~5 ~
execute if score @s Interval matches 58 on passengers run data merge entity @s {start_interpolation:0,transformation:{scale:[1f,1f,1f]}}

scoreboard players remove @s Interval 1
