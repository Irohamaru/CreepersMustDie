execute store result entity 0-0-0-0-0 Rotation[0] float 1 run scoreboard players get @s TrapRotation
execute rotated as 0-0-0-0-0 positioned ^ ^ ^8.5 positioned ~-8 ~-8 ~-8 run tag @e[tag=Enemy,dx=15,dy=15,dz=15] add AB.Target
execute positioned as @e[tag=AB.Target,distance=..30,limit=1,sort=nearest] positioned ~ ~1 ~ positioned ^ ^ ^10 facing entity @s feet facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^ ~ ~
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
execute store success score # _ run tag @e[tag=AB.Target,distance=..30] remove AB.Target

execute if score @s TrapRotation matches -90 run data modify storage calc: left_rotation set value {axis:[0f,0f,1f]}
execute if score @s TrapRotation matches 000 run data modify storage calc: left_rotation set value {axis:[0f,0f,-1f]}
execute if score @s TrapRotation matches 090 run data modify storage calc: left_rotation set value {axis:[0f,0f,1f]}
execute if score @s TrapRotation matches 180 run data modify storage calc: left_rotation set value {axis:[0f,0f,-1f]}

execute store result score _ TrapRotation run data get entity @s Rotation[0]
execute if score @s TrapRotation matches -90 store result storage calc: left_rotation.angle float -0.012 run scoreboard players operation _ TrapRotation -= @s TrapRotation
execute if score @s TrapRotation matches 000 store result storage calc: left_rotation.angle float 00.012 run scoreboard players operation _ TrapRotation -= @s TrapRotation
execute if score @s TrapRotation matches 090 store result storage calc: left_rotation.angle float -0.012 run scoreboard players operation _ TrapRotation -= @s TrapRotation
execute if score @s TrapRotation matches 180 store result storage calc: left_rotation.angle float 00.012 run scoreboard players operation _ TrapRotation -= @s TrapRotation

data modify entity @s transformation.left_rotation set from storage calc: left_rotation
execute on passengers run data modify entity @s transformation.left_rotation set from storage calc: left_rotation

execute unless score @s Interval matches 60..119 if score # _ matches 1 run scoreboard players add @s Interval 1
execute if score @s Interval matches 60..119 run scoreboard players add @s Interval 1

execute if score @s Interval matches 60..119 run function trap:auto_ballista/draw
execute if score @s Interval matches 130.. if score # _ matches 1 on passengers if entity @s[tag=AB.Arrow] rotated as @s run function trap:auto_ballista/shoot
