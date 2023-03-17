data merge entity @s {start_interpolation:0,interpolation_duration:5,transformation:{left_rotation:{angle:0.785,axis:[1f,0f,0f]},translation:[0f,2f,1f]}}
data modify storage mob: Damage set from storage trap: SpringTrap
execute positioned ~-1 ~ ~-1 as @e[tag=Enemy,dx=1,dy=1,dz=1] positioned as @s rotated ~ -45 run function mob:damage/
playsound minecraft:block.anvil.place master @a ~ ~ ~ 0.1 2
playsound minecraft:item.trident.return master @a ~ ~ ~ 1 2
