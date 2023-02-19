execute unless score @s Interval matches 251.. run function trap:crusher/damage

execute if score @s Interval matches 251.. run particle smoke ^ ^ ^0.5 0.1 0.3 0.1 0.05 3 force
execute if score @s Interval matches 251.. run scoreboard players add @s Interval 1

execute if score @s Interval matches 590.. run data modify entity @s ArmorItems[3].tag.CustomModelData set value 40
execute if score @s Interval matches 590.. run scoreboard players set @s Interval 0
