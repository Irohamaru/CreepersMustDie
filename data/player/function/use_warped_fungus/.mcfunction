data modify storage item: Item set from entity @s SelectedItem
execute if data storage item: Item.components.minecraft:custom_data.Magic run function player:use_warped_fungus/magic/check
execute if data storage item: Item.components.minecraft:custom_data.System run function player:use_warped_fungus/system/
scoreboard players reset @s UseWarpedFungus
