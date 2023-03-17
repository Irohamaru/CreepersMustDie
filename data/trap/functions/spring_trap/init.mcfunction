data modify entity @s item.tag.CustomModelData set value 71
data modify entity @s transformation merge value {left_rotation:[0f,0f,0f,1f],translation:[0f,1.05f,0f]}

summon minecraft:item_display ~ ~ ~ {Tags:[Spring,Trap],Team:Red,item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:72}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[2.1f,2.1f,2.1f],translation:[0f,1.05f,0f]}}
ride @e[tag=Spring,distance=..0.01,limit=1] mount @s
execute on passengers run tp @s ~ ~ ~ ~ ~
function main:id/set
execute on passengers run function main:id/link
execute on passengers run scoreboard players set @s Interval 100
