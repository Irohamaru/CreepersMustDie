execute store result score @s Interval run data get storage item: Item.components.minecraft:custom_data.Cooldown
scoreboard players operation @s Cooldown = @s Interval

execute if data storage item: Item.components.minecraft:custom_data.FireRing run function trap:fireball/act
