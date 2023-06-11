scoreboard players add @s MPRegen 1
execute if score @s MPRegen matches 6 run scoreboard players set @s MPRegen 0

execute if score @s MPRegen matches 0 run scoreboard players add @s MP 1
execute if score @s MPRegen matches 0 run function player:mp/set_bar

#experience set @s 38 levels
#execute store result score # MP run experience query @s points
#execute if score # MP matches 183 run experience set @s 0 points
#execute if score # MP matches ..182 run experience add @s 1 points
