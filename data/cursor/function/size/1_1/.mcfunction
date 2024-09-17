#Y軸
execute unless score #Success _ matches 0.. if data storage item: Item.components.minecraft:custom_data{Face:[Floor]} if entity @s[x_rotation=0..90] positioned ~ ~0.1 ~ if block ~ ~ ~ #cursor:no_collision rotated 0 90 align xz positioned ~0.5 ~ ~0.5 run function cursor:size/1_1/y
execute unless score #Success _ matches 0.. if data storage item: Item.components.minecraft:custom_data{Face:[Ceil]} unless entity @s[x_rotation=0..90] positioned ~ ~-0.1 ~ if block ~ ~ ~ #cursor:no_collision rotated 0 -90 align xz positioned ~0.5 ~ ~0.5 run function cursor:size/1_1/y
#X軸
execute unless score #Success _ matches 0.. if data storage item: Item.components.minecraft:custom_data{Face:[Wall]} if entity @s[y_rotation=-180..0] positioned ~-0.1 ~ ~ if block ~ ~ ~ #cursor:no_collision rotated -90 0 align yz positioned ~ ~0.5 ~0.5 run function cursor:size/1_1/x
execute unless score #Success _ matches 0.. if data storage item: Item.components.minecraft:custom_data{Face:[Wall]} unless entity @s[y_rotation=-180..0] positioned ~0.1 ~ ~ if block ~ ~ ~ #cursor:no_collision rotated 90 0 align yz positioned ~ ~0.5 ~0.5 run function cursor:size/1_1/x
#Z軸
execute unless score #Success _ matches 0.. if data storage item: Item.components.minecraft:custom_data{Face:[Wall]} if entity @s[y_rotation=-90..90] positioned ~ ~ ~-0.1 if block ~ ~ ~ #cursor:no_collision rotated 0 0 align xy positioned ~0.5 ~0.5 ~ run function cursor:size/1_1/z
execute unless score #Success _ matches 0.. if data storage item: Item.components.minecraft:custom_data{Face:[Wall]} unless entity @s[y_rotation=-90..90] positioned ~ ~ ~0.1 if block ~ ~ ~ #cursor:no_collision rotated 180 0 align xy positioned ~0.5 ~0.5 ~ run function cursor:size/1_1/z
