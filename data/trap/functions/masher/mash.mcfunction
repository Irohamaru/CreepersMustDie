execute if score @s Interval matches 4..10 run data modify storage mob: Damage set from storage trap: Masher
execute if score @s Interval matches 4..10 positioned ~-1 ~-2.5 ~-1 as @e[tag=Enemy,dx=1,dy=1,dz=1] positioned as @s run function mob:damage/

execute if score @s Interval matches 10 run playsound minecraft:entity.iron_golem.hurt master @a ~ ~ ~ 0.4 0.6
execute if score @s Interval matches 10 run playsound minecraft:block.piston.extend master @a ~ ~ ~ 1 0.55
execute if score @s Interval matches 10 run particle block blackstone ~ ~-1.8 ~ 1.2 0.2 1.2 1 10 force
