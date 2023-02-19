data modify entity @s ArmorItems[3].tag.CustomModelData set value 71
data modify entity @s Pose.Head set value [0f,0f,0f]
execute store result score _ _ run data get entity @s Rotation[0]
execute if score _ _ matches 0 run summon minecraft:armor_stand ^ ^-1.36 ^0.83 {Rotation:[0f,0f],Tags:[Spring,Trap],Team:Red,ArmorItems:[{},{},{},{id:"carrot_on_a_stick",Count:1b,tag:{CustomModelData:72}}],NoGravity:1b,Invisible:1b,Marker:0b}
execute if score _ _ matches 90 run summon minecraft:armor_stand ^ ^-1.36 ^0.83 {Rotation:[90f,0f],Tags:[Spring,Trap],Team:Red,ArmorItems:[{},{},{},{id:"carrot_on_a_stick",Count:1b,tag:{CustomModelData:72}}],NoGravity:1b,Invisible:1b,Marker:0b}
execute if score _ _ matches -180 run summon minecraft:armor_stand ^ ^-1.36 ^0.83 {Rotation:[-180f,0f],Tags:[Spring,Trap],Team:Red,ArmorItems:[{},{},{},{id:"carrot_on_a_stick",Count:1b,tag:{CustomModelData:72}}],NoGravity:1b,Invisible:1b,Marker:0b}
execute if score _ _ matches -90 run summon minecraft:armor_stand ^ ^-1.36 ^0.83 {Rotation:[-90f,0f],Tags:[Spring,Trap],Team:Red,ArmorItems:[{},{},{},{id:"carrot_on_a_stick",Count:1b,tag:{CustomModelData:72}}],NoGravity:1b,Invisible:1b,Marker:0b}
function main:id/set
execute positioned ^ ^-1.36 ^0.83 as @e[tag=Spring,distance=..0.01] run function main:id/link
scoreboard players set @s Interval 110
