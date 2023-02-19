execute positioned ~0.5 ~ ~0.5 run function cursor:check_block
execute positioned ~0.5 ~ ~-0.5 run function cursor:check_block
execute positioned ~-0.5 ~ ~0.5 run function cursor:check_block
execute positioned ~-0.5 ~ ~-0.5 run function cursor:check_block

execute if score #Success _ matches 4 if data storage item: Item.tag{Face:[Ceil]} positioned ~ ~-1 ~ run function cursor:tp
execute if score #Success _ matches 4 unless data storage item: Item.tag{Face:[Ceil]} run function cursor:tp
execute unless score #Success _ matches 4 run function cursor:kill

execute if score #Success _ matches 4 run particle dust 0 1 0 0.5 ~ ~ ~1 0.5 0 0 1 12 force @s
execute if score #Success _ matches 4 run particle dust 0 1 0 0.5 ~ ~ ~-1 0.5 0 0 1 12 force @s
execute if score #Success _ matches 4 run particle dust 0 1 0 0.5 ~1 ~ ~ 0 0 0.5 1 12 force @s
execute if score #Success _ matches 4 run particle dust 0 1 0 0.5 ~-1 ~ ~ 0 0 0.5 1 12 force @s

execute unless score #Success _ matches 4 run particle dust 1 0 0 0.5 ~ ~ ~1 0.5 0 0 1 12 force @s
execute unless score #Success _ matches 4 run particle dust 1 0 0 0.5 ~ ~ ~-1 0.5 0 0 1 12 force @s
execute unless score #Success _ matches 4 run particle dust 1 0 0 0.5 ~1 ~ ~ 0 0 0.5 1 12 force @s
execute unless score #Success _ matches 4 run particle dust 1 0 0 0.5 ~-1 ~ ~ 0 0 0.5 1 12 force @s
