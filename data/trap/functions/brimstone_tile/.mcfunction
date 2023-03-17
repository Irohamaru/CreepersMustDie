execute unless score @s Interval matches 151.. run function trap:brimstone_tile/burning

execute if score @s Interval matches 151.. run scoreboard players add @s Interval 1

execute if score @s Interval matches 400.. run data modify entity @s item.tag.CustomModelData set value 20
execute if score @s Interval matches 400.. run scoreboard players set @s Interval 0
