scoreboard players set # Crusher 0

data modify storage mob: Damage set from storage trap: Crusher
execute positioned ^ ^ ^0.5 positioned ~-1 ~-1 ~-1 as @e[tag=Enemy,dx=1,dy=1,dz=1] at @s run function trap:crusher/apply
execute positioned ^ ^ ^0.5 positioned ~-1 ~-51 ~-1 as @e[type=wandering_trader,dx=1,dy=1,dz=1] at @s run function trap:crusher/apply

execute if score # Crusher matches 1.. run playsound minecraft:item.armor.equip_chain master @a ~ ~ ~ 0.2 0
scoreboard players operation @s Interval += # Crusher
execute if score @s Interval matches 251.. run data modify entity @s item.components.minecraft:custom_model_data set value 41
