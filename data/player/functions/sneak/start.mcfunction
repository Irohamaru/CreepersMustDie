data modify block 0 0 0 Items set value [{id:"stone_button",Count:1b}]
data modify block 0 0 0 Items[0].components.minecraft:custom_data.Inventory set from entity @s Inventory

execute unless score @s Stage matches 1.. run function player:sneak/hotbar_lobby
execute if score @s Stage matches 1.. run function player:sneak/hotbar_stage

item replace entity @s armor.head from block 0 0 0 container.0

title @s actionbar {"text":""}
