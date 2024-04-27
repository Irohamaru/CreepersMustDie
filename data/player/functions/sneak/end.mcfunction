data remove block 0 0 0 Items
data modify block 0 0 0 Items set from entity @s Inventory[{Slot:103b}].components.minecraft:custom_data.Inventory

#スニーク中に拾ったトラップを返す
clear @s warped_fungus_on_a_stick
clear @s carrot_on_a_stick[minecraft:custom_data={Sale:1b}]
data remove block 0 2 0 Items
data modify block 0 2 0 Items append from entity @s Inventory[{Slot:0b}]
data modify block 0 2 0 Items append from entity @s Inventory[{Slot:1b}]
data modify block 0 2 0 Items append from entity @s Inventory[{Slot:2b}]
data modify block 0 2 0 Items append from entity @s Inventory[{Slot:3b}]
data modify block 0 2 0 Items append from entity @s Inventory[{Slot:4b}]
data modify block 0 2 0 Items append from entity @s Inventory[{Slot:5b}]
data modify block 0 2 0 Items append from entity @s Inventory[{Slot:6b}]
data modify block 0 2 0 Items append from entity @s Inventory[{Slot:7b}]
data modify block 0 2 0 Items append from entity @s Inventory[{Slot:8b}]

item replace entity @s hotbar.0 from block 0 0 0 container.0
item replace entity @s hotbar.1 from block 0 0 0 container.1
item replace entity @s hotbar.2 from block 0 0 0 container.2
item replace entity @s hotbar.3 from block 0 0 0 container.3
item replace entity @s hotbar.4 from block 0 0 0 container.4
item replace entity @s hotbar.5 from block 0 0 0 container.5
item replace entity @s hotbar.6 from block 0 0 0 container.6
item replace entity @s hotbar.7 from block 0 0 0 container.7
item replace entity @s hotbar.8 from block 0 0 0 container.8

loot give @s mine 0 2 0 minecraft:debug_stick

title @s actionbar {"text":""}
