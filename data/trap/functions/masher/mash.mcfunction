data modify storage mob: Damage set from storage trap: Masher
execute positioned ~-1 ~0.7 ~-1 as @e[tag=Enemy,dx=1,dy=1,dz=1] positioned as @s run function mob:damage/

scoreboard players set # Masher 12
execute positioned ~-1 ~0.7 ~-1 as @e[tag=Enemy,dx=1,dy=1,dz=1] at @s run function trap:masher/apply
execute positioned ~-1 ~-49.3 ~-1 as @e[type=wandering_trader,dx=1,dy=1,dz=1] at @s run function trap:masher/apply

execute if score @s Interval matches 10 run playsound minecraft:entity.iron_golem.hurt master @a ~ ~ ~ 0.4 0.6
execute if score @s Interval matches 10 run playsound minecraft:block.piston.extend master @a ~ ~ ~ 1 0.55
execute if score @s Interval matches 10 run particle block blackstone ~ ~0.2 ~ 1.2 0.2 1.2 1 20 force
tp @s ~ ~-0.24 ~
