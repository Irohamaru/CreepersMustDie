execute if entity @s[tag=Enemy] run scoreboard players add # Crusher 1
execute if entity @s[tag=Enemy] run function mob:damage/
execute unless entity @s[scores={Crusher=1..}] run attribute @s generic.movement_speed modifier add 0-0-0-0-40 "crusher" -0.25 multiply_base
scoreboard players set @s Crusher 2
