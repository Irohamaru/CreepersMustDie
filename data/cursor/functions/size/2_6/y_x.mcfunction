execute positioned ~-2.5 ~ ~0.5 run function cursor:check_block
execute positioned ~-2.5 ~ ~-0.5 run function cursor:check_block
execute positioned ~-1.5 ~ ~0.5 run function cursor:check_block
execute positioned ~-1.5 ~ ~-0.5 run function cursor:check_block
execute positioned ~-0.5 ~ ~0.5 run function cursor:check_block
execute positioned ~-0.5 ~ ~-0.5 run function cursor:check_block
execute positioned ~0.5 ~ ~0.5 run function cursor:check_block
execute positioned ~0.5 ~ ~-0.5 run function cursor:check_block
execute positioned ~1.5 ~ ~0.5 run function cursor:check_block
execute positioned ~1.5 ~ ~-0.5 run function cursor:check_block
execute positioned ~2.5 ~ ~0.5 run function cursor:check_block
execute positioned ~2.5 ~ ~-0.5 run function cursor:check_block

execute if score #Success _ matches 12 if data storage item: Item.components.minecraft:custom_data{Face:[Ceil]} positioned ~ ~-0.25 ~ run function cursor:tp
execute if score #Success _ matches 12 unless data storage item: Item.components.minecraft:custom_data{Face:[Ceil]} run function cursor:tp
execute unless score #Success _ matches 12 run function cursor:kill

execute if score #Success _ matches 12 run particle dust{color:[0,1,0],scale:0.5} ~ ~ ~1 1.5 0 0 1 20 force @s
execute if score #Success _ matches 12 run particle dust{color:[0,1,0],scale:0.5} ~ ~ ~-1 1.5 0 0 1 20 force @s
execute if score #Success _ matches 12 run particle dust{color:[0,1,0],scale:0.5} ~3 ~ ~ 0 0 0.5 1 12 force @s
execute if score #Success _ matches 12 run particle dust{color:[0,1,0],scale:0.5} ~-3 ~ ~ 0 0 0.5 1 12 force @s

execute unless score #Success _ matches 12 run particle dust{color:[1,0,0],scale:0.5} ~ ~ ~1 1.5 0 0 1 20 force @s
execute unless score #Success _ matches 12 run particle dust{color:[1,0,0],scale:0.5} ~ ~ ~-1 1.5 0 0 1 20 force @s
execute unless score #Success _ matches 12 run particle dust{color:[1,0,0],scale:0.5} ~3 ~ ~ 0 0 0.5 1 12 force @s
execute unless score #Success _ matches 12 run particle dust{color:[1,0,0],scale:0.5} ~-3 ~ ~ 0 0 0.5 1 12 force @s
