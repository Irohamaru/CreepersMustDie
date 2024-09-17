particle minecraft:item_slime ~ ~0.15 ~ 0.5 0.1 0.5 1 1 force

execute positioned ~-1 ~ ~-1 as @e[tag=Enemy,dx=1,dy=1,dz=1] at @s run function trap:slime_pool/apply
execute positioned ~-1 ~-50 ~-1 as @e[type=wandering_trader,dx=1,dy=1,dz=1] at @s run function trap:slime_pool/apply
