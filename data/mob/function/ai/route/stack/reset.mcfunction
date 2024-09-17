scoreboard players set @s StackTime -700
execute store result score # _ run attribute @s minecraft:movement_speed get 100

scoreboard players operation @s StackTime /= # _
