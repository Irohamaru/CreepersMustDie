data modify entity @s ArmorItems[3].tag.CustomModelData set value 81
execute store result score _ _ run data get entity @s Rotation[0]
execute if score _ _ matches 0 run summon minecraft:armor_stand ~ ~-0.5 ~ {Rotation:[0f,0f],Tags:[Mace,Trap],Team:Red,Pose:{Head:[0f,0.01f,0f]},ArmorItems:[{},{},{},{id:"carrot_on_a_stick",Count:1b,tag:{CustomModelData:82}}],NoGravity:1b,Invisible:1b,Marker:1b}
execute if score _ _ matches 90 run summon minecraft:armor_stand ~ ~-0.5 ~ {Rotation:[90f,0f],Tags:[Mace,Trap],Team:Red,Pose:{Head:[0f,0.01f,0f]},ArmorItems:[{},{},{},{id:"carrot_on_a_stick",Count:1b,tag:{CustomModelData:82}}],NoGravity:1b,Invisible:1b,Marker:1b}
execute if score _ _ matches -180 run summon minecraft:armor_stand ~ ~-0.5 ~ {Rotation:[-180f,0f],Tags:[Mace,Trap],Team:Red,Pose:{Head:[0f,0.01f,0f]},ArmorItems:[{},{},{},{id:"carrot_on_a_stick",Count:1b,tag:{CustomModelData:82}}],NoGravity:1b,Invisible:1b,Marker:1b}
execute if score _ _ matches -90 run summon minecraft:armor_stand ~ ~-0.5 ~ {Rotation:[-90f,0f],Tags:[Mace,Trap],Team:Red,Pose:{Head:[0f,0.01f,0f]},ArmorItems:[{},{},{},{id:"carrot_on_a_stick",Count:1b,tag:{CustomModelData:82}}],NoGravity:1b,Invisible:1b,Marker:1b}
execute positioned ^ ^ ^2 run summon marker ~ ~-0.5 ~ {Tags:[FixedTrap,FixedPoint]}
execute positioned ^ ^ ^-2 run summon marker ~ ~-0.5 ~ {Tags:[FixedTrap,FixedPoint]}
function main:id/set
execute positioned ~ ~-0.5 ~ as @e[tag=Mace,distance=..0.01] run function main:id/link
execute positioned ^ ^ ^2 positioned ~ ~-0.5 ~ as @e[tag=FixedPoint,distance=..0.01] run function main:id/link
execute positioned ^ ^ ^-2 positioned ~ ~-0.5 ~ as @e[tag=FixedPoint,distance=..0.01] run function main:id/link
execute positioned ~ ~-0.5 ~ as @e[tag=Mace,distance=..0.01] run scoreboard players set @s Interval 25
