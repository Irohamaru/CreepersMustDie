scoreboard players set @s StackTime 500
execute store result score # _ run attribute @s minecraft:generic.movement_speed get -100
scoreboard players operation @s StackTime /= # _
#scoreboard players reset @s X
#scoreboard players reset @s Z
