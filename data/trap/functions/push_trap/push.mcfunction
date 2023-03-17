data modify storage mob: Damage set from storage trap: PushTrap
execute positioned ^ ^ ^1 positioned ~-1 ~-1 ~-1 as @e[tag=Enemy,dx=1,dy=1,dz=1] positioned as @s run function mob:damage/
execute if score @s Interval matches 1 run playsound minecraft:block.anvil.place master @a ~ ~ ~ 0.1 2
execute if score @s Interval matches 1 run playsound minecraft:block.piston.extend master @a ~ ~ ~ 1 1.2
execute if score @s Interval matches 1 run data merge entity @s {start_interpolation:0,interpolation_duration:2,transformation:{translation:[0f,0.1f,2f]}}
