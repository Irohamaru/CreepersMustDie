summon minecraft:armor_stand ~ ~ ~ {Tags:[PlacingTrap],Glowing:1b,NoGravity:1b,Invisible:1b,Marker:1b,Passengers:[{id:"minecraft:item_display",Rotation:[180f,0f],Tags:[PlacingTrap],item:{id:"minecraft:carrot_on_a_stick",Count:1b}}]}

execute as @e[type=item_display,tag=PlacingTrap,tag=!Initialized,limit=1,distance=..0.01] store result entity @s Rotation[0] float 1 run scoreboard players operation @s TrapRotation = # TrapRotation

data modify entity @e[type=item_display,tag=PlacingTrap,tag=!Initialized,limit=1,distance=..0.01] item.components.minecraft:custom_model_data set from storage item: Item.components.minecraft:custom_model_data
data modify entity @e[type=item_display,tag=PlacingTrap,tag=!Initialized,limit=1,distance=..0.01] transformation merge from storage item: Item.components.minecraft:custom_data.transformation

scoreboard players set @e[tag=PlacingTrap,tag=!Initialized,distance=..0.01] ParentID 0
tag @e[tag=PlacingTrap,tag=!Initialized,distance=..0.01] add Initialized
