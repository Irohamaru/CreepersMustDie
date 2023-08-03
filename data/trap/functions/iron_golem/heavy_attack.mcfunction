particle cloud ^ ^0.2 ^ 0.2 0.2 0.2 0.2 30 force
particle block dirt ^ ^0.5 ^ 1.5 0.5 1.5 1 50 force
playsound minecraft:entity.zombie.attack_iron_door master @a ~ ~ ~ 0.5 0
playsound minecraft:entity.zombie.break_wooden_door master @a ~ ~ ~ 0.3 0

execute as @e[tag=Enemy,distance=..4] positioned ^ ^ ^-1 run damage @s 125 generic by @e[tag=IronGolem,distance=..0.01,limit=1]
data modify storage mob: Damage set from storage trap: IronGolemHeavyAttack
execute as @e[tag=Enemy,distance=..4] positioned ^ ^-1 ^ run function mob:damage/

scoreboard players set @s Interval 0
