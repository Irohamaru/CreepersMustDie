scoreboard players remove @s Slime 1
attribute @s[scores={Slime=0}] minecraft:movement_speed modifier remove slime_pool

execute if entity @s[tag=Enemy] run particle minecraft:item_slime ~ ~1 ~ 0.3 0.5 0.3 1 1 force
