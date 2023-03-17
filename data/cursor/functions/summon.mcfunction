tp 0-0-0-0-0 0.0 0.0 0.0 ~ ~
scoreboard players operation # TrapRotation = @s TrapRotation

summon minecraft:armor_stand ~ ~ ~ {Tags:[PlacingTrap],Glowing:1b,NoGravity:1b,Invisible:1b,Marker:1b,Passengers:[{id:"minecraft:item_display",Rotation:[180f,0f],Tags:[PlacingTrap],item:{id:"minecraft:carrot_on_a_stick",Count:1b}}]}

#壁のとき
execute as 0-0-0-0-0 if entity @s[x_rotation=0] store result score # TrapRotation run data get entity @s Rotation[0]
execute as 0-0-0-0-0 if entity @s[x_rotation=0] run scoreboard players add # TrapRotation 180

execute store result entity @e[type=item_display,tag=PlacingTrap,tag=!Initialized,limit=1,distance=..0.01] Rotation[0] float 1 run scoreboard players get # TrapRotation

data modify entity @e[type=item_display,tag=PlacingTrap,tag=!Initialized,limit=1,distance=..0.01] item.tag.CustomModelData set from storage item: Item.tag.CustomModelData
data modify entity @e[type=item_display,tag=PlacingTrap,tag=!Initialized,limit=1,distance=..0.01] transformation merge from storage item: Item.tag.transformation

scoreboard players set @e[tag=PlacingTrap,tag=!Initialized,distance=..0.01] ParentID 0
tag @e[tag=PlacingTrap,tag=!Initialized,distance=..0.01] add Initialized
