scoreboard players remove @s Slime 1
attribute @s[scores={Slime=0}] generic.movement_speed modifier remove 0-0-0-0-60

execute if entity @s[tag=Enemy] run particle minecraft:item_slime ~ ~1 ~ 0.3 0.5 0.3 1 1 force
