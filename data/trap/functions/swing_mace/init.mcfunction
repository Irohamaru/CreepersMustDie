data modify entity @s item.tag.CustomModelData set value 81

summon minecraft:item_display ~ ~ ~ {Tags:[Mace,Trap],Team:Red,item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:82}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[2f,2f,2f],translation:[0f,-2.25f,0f]}}
ride @e[tag=Mace,distance=..0.01,limit=1] mount @s
execute on passengers run tp @s ~ ~ ~ ~ ~
function main:id/set
execute on passengers run function main:id/link
execute on passengers run scoreboard players set @s Interval 25

execute positioned ^ ^ ^2 run summon marker ~ ~-0.5 ~ {Tags:[FixedTrap,FixedPoint]}
execute positioned ^ ^ ^-2 run summon marker ~ ~-0.5 ~ {Tags:[FixedTrap,FixedPoint]}
execute positioned ^ ^ ^2 positioned ~ ~-0.5 ~ as @e[tag=FixedPoint,distance=..0.01] run function main:id/link
execute positioned ^ ^ ^-2 positioned ~ ~-0.5 ~ as @e[tag=FixedPoint,distance=..0.01] run function main:id/link
