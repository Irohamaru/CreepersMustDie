data modify entity @s ArmorItems[3].tag.CustomModelData set value 91
execute store result score _ _ run data get entity @s Rotation[0]
execute if score _ _ matches 0 run summon minecraft:armor_stand ~ ~ ~ {Rotation:[0f,0f],Tags:[Piston,Trap],Team:Red,ArmorItems:[{},{},{},{id:"carrot_on_a_stick",Count:1b,tag:{CustomModelData:92}}],NoGravity:1b,Invisible:1b,Marker:0b}
execute if score _ _ matches 90 run summon minecraft:armor_stand ~ ~ ~ {Rotation:[90f,0f],Tags:[Piston,Trap],Team:Red,ArmorItems:[{},{},{},{id:"carrot_on_a_stick",Count:1b,tag:{CustomModelData:92}}],NoGravity:1b,Invisible:1b,Marker:0b}
execute if score _ _ matches -180 run summon minecraft:armor_stand ~ ~ ~ {Rotation:[-180f,0f],Tags:[Piston,Trap],Team:Red,ArmorItems:[{},{},{},{id:"carrot_on_a_stick",Count:1b,tag:{CustomModelData:92}}],NoGravity:1b,Invisible:1b,Marker:0b}
execute if score _ _ matches -90 run summon minecraft:armor_stand ~ ~ ~ {Rotation:[-90f,0f],Tags:[Piston,Trap],Team:Red,ArmorItems:[{},{},{},{id:"carrot_on_a_stick",Count:1b,tag:{CustomModelData:92}}],NoGravity:1b,Invisible:1b,Marker:0b}
function main:id/set
execute as @e[tag=Piston,distance=..0.01] run function main:id/link
scoreboard players set @e[tag=Piston,distance=..0.01] Interval 90
