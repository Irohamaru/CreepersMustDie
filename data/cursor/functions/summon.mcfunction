tp 0-0-0-0-0 0.0 0.0 0.0 ~ ~
execute if score @s TrapRotation matches 0 as 0-0-0-0-0 unless entity @s[x_rotation=0] run summon minecraft:armor_stand ~ ~ ~ {Rotation:[180f,0f],Tags:[PlacingTrap],ArmorItems:[{},{},{},{id:"carrot_on_a_stick",Count:1b}],Glowing:1b,NoGravity:1b,Invisible:1b,Marker:1b}
execute if score @s TrapRotation matches 1 as 0-0-0-0-0 unless entity @s[x_rotation=0] run summon minecraft:armor_stand ~ ~ ~ {Rotation:[-90f,0f],Tags:[PlacingTrap],ArmorItems:[{},{},{},{id:"carrot_on_a_stick",Count:1b}],Glowing:1b,NoGravity:1b,Invisible:1b,Marker:1b}
execute if score @s TrapRotation matches 2 as 0-0-0-0-0 unless entity @s[x_rotation=0] run summon minecraft:armor_stand ~ ~ ~ {Rotation:[0f,0f],Tags:[PlacingTrap],ArmorItems:[{},{},{},{id:"carrot_on_a_stick",Count:1b}],Glowing:1b,NoGravity:1b,Invisible:1b,Marker:1b}
execute if score @s TrapRotation matches 3 as 0-0-0-0-0 unless entity @s[x_rotation=0] run summon minecraft:armor_stand ~ ~ ~ {Rotation:[90f,0f],Tags:[PlacingTrap],ArmorItems:[{},{},{},{id:"carrot_on_a_stick",Count:1b}],Glowing:1b,NoGravity:1b,Invisible:1b,Marker:1b}
execute as 0-0-0-0-0 if entity @s[x_rotation=0,y_rotation=0] run summon minecraft:armor_stand ~ ~ ~ {Rotation:[180f,0f],Tags:[PlacingTrap],ArmorItems:[{},{},{},{id:"carrot_on_a_stick",Count:1b}],Glowing:1b,NoGravity:1b,Invisible:1b,Marker:1b}
execute as 0-0-0-0-0 if entity @s[x_rotation=0,y_rotation=90] run summon minecraft:armor_stand ~ ~ ~ {Rotation:[-90f,0f],Tags:[PlacingTrap],ArmorItems:[{},{},{},{id:"carrot_on_a_stick",Count:1b}],Glowing:1b,NoGravity:1b,Invisible:1b,Marker:1b}
execute as 0-0-0-0-0 if entity @s[x_rotation=0,y_rotation=180] run summon minecraft:armor_stand ~ ~ ~ {Rotation:[0f,0f],Tags:[PlacingTrap],ArmorItems:[{},{},{},{id:"carrot_on_a_stick",Count:1b}],Glowing:1b,NoGravity:1b,Invisible:1b,Marker:1b}
execute as 0-0-0-0-0 if entity @s[x_rotation=0,y_rotation=-90] run summon minecraft:armor_stand ~ ~ ~ {Rotation:[90f,0f],Tags:[PlacingTrap],ArmorItems:[{},{},{},{id:"carrot_on_a_stick",Count:1b}],Glowing:1b,NoGravity:1b,Invisible:1b,Marker:1b}

data modify entity @e[tag=PlacingTrap,tag=!Initialized,limit=1,distance=..0.01] ArmorItems[3].tag.CustomModelData set from storage item: Item.tag.CustomModelData
execute if data storage item: Item.tag.Pose run data modify entity @e[tag=PlacingTrap,tag=!Initialized,limit=1,distance=..0.01] Pose set from storage item: Item.tag.Pose
execute unless data storage item: Item.tag.Pose run data remove entity @e[tag=PlacingTrap,tag=!Initialized,limit=1,distance=..0.01] Pose
scoreboard players set @e[tag=PlacingTrap,tag=!Initialized,distance=..0.01] ParentID 0
tag @e[tag=PlacingTrap,tag=!Initialized,distance=..0.01] add Initialized
