scoreboard players set #Success _ 1

playsound entity.generic.explode master @a ~ ~ ~ 2
playsound block.fire.ambient master @a ~ ~ ~ 2
particle flame ~ ~ ~ 0.5 0.5 0.5 0.06 40 force
particle dust 100000000 100 0 2.5 ^ ^ ^ 1 1 1 1 40 force


execute on passengers run kill @s
kill @s

data modify storage mob: Damage set from storage trap: Fireball
execute as @e[tag=Enemy,distance=..5] facing entity @s eyes positioned as @s run function mob:damage/
