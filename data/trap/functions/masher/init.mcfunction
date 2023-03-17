data modify entity @s item.tag.CustomModelData set value 101

summon minecraft:item_display ~ ~ ~ {Tags:[MasherHead,Trap],Team:Red,item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:102}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[2f,2.5f,2f],translation:[0f,-0.25f,0f]}}
ride @e[tag=MasherHead,distance=..0.01,limit=1] mount @s
function main:id/set
execute on passengers run function main:id/link
execute on passengers run scoreboard players set @s Interval 100
