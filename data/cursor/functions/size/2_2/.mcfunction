#Y軸
execute unless score #Success _ matches 0.. if data storage item: Item.tag{Face:[Floor]} if entity @s[x_rotation=0..90] positioned ~ ~0.1 ~ if block ~ ~ ~ #cursor:no_collision rotated 0 90 positioned ~-0.5 ~ ~-0.5 align xz positioned ~1 ~ ~1 run function cursor:size/2_2/y
execute unless score #Success _ matches 0.. if data storage item: Item.tag{Face:[Ceil]} unless entity @s[x_rotation=0..90] positioned ~ ~-0.1 ~ if block ~ ~ ~ #cursor:no_collision rotated 0 -90 positioned ~-0.5 ~ ~-0.5 align xz positioned ~1 ~ ~1 run function cursor:size/2_2/y
#X軸
execute unless score #Success _ matches 0.. if data storage item: Item.tag{Face:[Wall]} if entity @s[y_rotation=-180..0] positioned ~-0.1 ~ ~ if block ~ ~ ~ #cursor:no_collision rotated -90 0 positioned ~ ~-0.5 ~-0.5 align yz positioned ~ ~1 ~1 run function cursor:size/2_2/x
execute unless score #Success _ matches 0.. if data storage item: Item.tag{Face:[Wall]} unless entity @s[y_rotation=-180..0] positioned ~0.1 ~ ~ if block ~ ~ ~ #cursor:no_collision rotated 90 0 positioned ~ ~-0.5 ~-0.5 align yz positioned ~ ~1 ~1 run function cursor:size/2_2/x
#Z軸
execute unless score #Success _ matches 0.. if data storage item: Item.tag{Face:[Wall]} if entity @s[y_rotation=-90..90] positioned ~ ~ ~-0.1 if block ~ ~ ~ #cursor:no_collision rotated 0 0 positioned ~-0.5 ~-0.5 ~ align xy positioned ~1 ~1 ~ run function cursor:size/2_2/z
execute unless score #Success _ matches 0.. if data storage item: Item.tag{Face:[Wall]} unless entity @s[y_rotation=-90..90] positioned ~ ~ ~0.1 if block ~ ~ ~ #cursor:no_collision rotated 180 0 positioned ~-0.5 ~-0.5 ~ align xy positioned ~1 ~1 ~ run function cursor:size/2_2/z
