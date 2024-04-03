execute store result entity @s Rotation[0] float 1 run scoreboard players operation @s TrapRotation = # TrapRotation

data modify entity @s item.components.minecraft:custom_model_data set from storage item: Item.components.minecraft:custom_model_data
data modify entity @s transformation merge from storage item: Item.components.minecraft:custom_data.transformation
data modify entity @s Tags append from storage item: Item.components.minecraft:custom_data.Tags[]

team join Gold @s

#読み込み範囲外にtp
tp @s ~ ~ ~
