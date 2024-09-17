tp 0-0-0-0-0 ~ ~ ~
execute store result score @s X run data get entity @s Pos[0] 100
execute store result score # X run data get entity @s Motion[0] 100
execute store result entity 0-0-0-0-0 Pos[0] double 0.01 run scoreboard players operation @s X += # X
execute store result score @s Y run data get entity @s Pos[1] 100
execute store result score # Y run data get entity @s Motion[1] 100
execute store result entity 0-0-0-0-0 Pos[1] double 0.01 run scoreboard players operation @s Y += # Y
execute store result score @s Z run data get entity @s Pos[2] 100
execute store result score # Z run data get entity @s Motion[2] 100
execute store result entity 0-0-0-0-0 Pos[2] double 0.01 run scoreboard players operation @s Z += # Z

execute at 0-0-0-0-0 positioned ~-0.5 ~-0.5 ~-0.5 as @n[tag=Enemy,dx=0,dy=0,dz=0] positioned as @s run function mob:damage/
execute at 0-0-0-0-0 positioned ~-0.5 ~-0.5 ~-0.5 as @n[tag=Enemy,dx=0,dy=0,dz=0] positioned as @s run damage @s 1 minecraft:generic by @n[type=snow_golem,distance=..32]
playsound entity.snow_golem.hurt master @a ~ ~ ~ 0.5
