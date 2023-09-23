execute store result entity @s Rotation[0] float 1 run scoreboard players operation @s TrapRotation = # TrapRotation

data modify entity @s item.tag.CustomModelData set from storage item: Item.tag.CustomModelData
data modify entity @s transformation merge from storage item: Item.tag.transformation
data modify entity @s Tags append from storage item: Item.tag.Tags[]

team join Gold @s

#読み込み範囲外にtp
tp @s ~ ~ ~
