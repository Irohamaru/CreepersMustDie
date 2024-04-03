function cursor:check_block

execute if score #Success _ matches 1 if data storage item: Item.components.minecraft:custom_data{Face:[Ceil]} positioned ~ ~-0.25 ~ run function cursor:tp
execute if score #Success _ matches 1 unless data storage item: Item.components.minecraft:custom_data{Face:[Ceil]} run function cursor:tp
execute unless score #Success _ matches 1 run function cursor:kill

execute if score #Success _ matches 1 run particle dust 0 1 0 0.5 ~ ~ ~0.5 0.25 0 0 1 7 force @s
execute if score #Success _ matches 1 run particle dust 0 1 0 0.5 ~ ~ ~-0.5 0.25 0 0 1 7 force @s
execute if score #Success _ matches 1 run particle dust 0 1 0 0.5 ~0.5 ~ ~ 0 0 0.25 1 7 force @s
execute if score #Success _ matches 1 run particle dust 0 1 0 0.5 ~-0.5 ~ ~ 0 0 0.25 1 7 force @s

execute unless score #Success _ matches 1 run particle dust 1 0 0 0.5 ~ ~ ~0.5 0.25 0 0 1 7 force @s
execute unless score #Success _ matches 1 run particle dust 1 0 0 0.5 ~ ~ ~-0.5 0.25 0 0 1 7 force @s
execute unless score #Success _ matches 1 run particle dust 1 0 0 0.5 ~0.5 ~ ~ 0 0 0.25 1 7 force @s
execute unless score #Success _ matches 1 run particle dust 1 0 0 0.5 ~-0.5 ~ ~ 0 0 0.25 1 7 force @s
