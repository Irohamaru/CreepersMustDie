execute if entity @s[tag=Enemy] run scoreboard players add # Crusher 1
execute if entity @s[tag=Enemy] run function mob:damage/
execute unless entity @s[scores={Crusher=1..}] run attribute @s minecraft:movement_speed modifier add crusher -0.25 add_multiplied_total
scoreboard players set @s Crusher 2
