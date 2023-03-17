scoreboard players set # Burning 0

execute positioned ~-1 ~ ~-1 as @e[tag=Enemy,dx=1,dy=1,dz=1] at @s run function trap:brimstone_tile/apply
execute positioned ~-1 ~-50 ~-1 as @e[type=wandering_trader,dx=1,dy=1,dz=1] at @s run function trap:brimstone_tile/apply

scoreboard players operation @s Interval += # Burning
execute if score @s Interval matches 151.. run data modify entity @s item.tag.CustomModelData set value 21

particle flame ~ ~0.15 ~ 0.5 0.1 0.5 0.01 1 force
execute if score #World Interval matches 1 run playsound minecraft:block.fire.ambient master @a ~ ~ ~ 1 1