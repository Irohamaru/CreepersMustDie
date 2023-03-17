data modify storage mob: Damage set from storage trap: ArrowWall
execute as @e[tag=Enemy,dx=0,dy=0,dz=0] positioned as @s rotated ~ -30 run function mob:damage/

execute at @s run kill @e[tag=Arrow,distance=..0.01]
