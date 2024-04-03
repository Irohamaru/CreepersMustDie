data modify entity @s item.components.minecraft:custom_model_data set value 161

summon minecraft:item_display ^ ^ ^0.9 {Tags:[AutoBallista,Trap,AB.Arms],Team:Red,item:{id:"minecraft:carrot_on_a_stick",Count:1b,components:{"minecraft:custom_model_data":162}},transformation:{right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f],scale:[2.1f,2.1f,2.1f],translation:[0f,0f,0.5f]}}
summon minecraft:item_display ^ ^ ^0.9 {Tags:[AutoBallista,Trap,AB.Arrow],Team:Red,item:{id:"minecraft:carrot_on_a_stick",Count:1b,components:{"minecraft:custom_model_data":163}},transformation:{right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f],scale:[2.1f,2.1f,2.1f],translation:[0f,0f,0f]}}
summon minecraft:item_display ^ ^ ^0.9 {Tags:[AutoBallista,Trap,AB.Table],Team:Red,item:{id:"minecraft:carrot_on_a_stick",Count:1b,components:{"minecraft:custom_model_data":164}},transformation:{right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f],scale:[2.1f,2.1f,2.1f],translation:[0f,0f,0f]}}
summon minecraft:item_display ^ ^ ^0.9 {Tags:[AutoBallista,Trap,AB.Tray],Team:Red,item:{id:"minecraft:carrot_on_a_stick",Count:1b,components:{"minecraft:custom_model_data":165}},transformation:{right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f],scale:[2.1f,2.1f,2.1f],translation:[0f,0f,0f]}}
execute positioned ^ ^ ^0.9 as @e[tag=AutoBallista,tag=!AB.Table,distance=..0.01] run ride @s mount @e[tag=AutoBallista,tag=AB.Table,distance=..0.01,limit=1] 
execute positioned ^ ^ ^0.9 as @e[tag=AutoBallista,distance=..0.01] run tp @s ~ ~ ~ ~ ~
function main:id/set

execute positioned ^ ^ ^0.9 as @e[tag=AutoBallista,distance=..0.01] run function main:id/link
execute positioned ^ ^ ^0.9 as @e[tag=AutoBallista,distance=..0.01] run scoreboard players set @s Interval 90

execute positioned ^ ^ ^0.9 as @e[tag=AutoBallista,distance=..0.01] store result score @s TrapRotation run data get entity @s Rotation[0]
