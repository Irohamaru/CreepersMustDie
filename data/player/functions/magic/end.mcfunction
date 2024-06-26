execute if data storage item: Item.components.minecraft:custom_data.Fireball run function trap:fireball/charge/end

execute store result score @s Cooldown run data get storage item: Item.components.minecraft:custom_data.Cooldown
scoreboard players operation @s Interval = @s Cooldown

scoreboard players reset @s MagicTime
