data modify entity @s item.components.minecraft:custom_model_data set value 151
summon minecraft:item_display ~ ~ ~ {item:{id:"lapis_block",Count:1b},Tags:[Trap,LightningCube],transformation:{translation:[0f,1.65f,0f],scale:[0.5f,0.5f,0.5f],left_rotation:{angle:0.62f,axis:[1f,0f,0f]},right_rotation:{angle:0.785f,axis:[0f,0f,1f]}}}
ride @e[tag=LightningCube,distance=..0.01,limit=1] mount @s
function main:id/set
execute on passengers run function main:id/link

execute store result score @s X run data get entity @s Pos[0]
execute store result score @s Y run data get entity @s Pos[1]
execute store result score @s Z run data get entity @s Pos[2]
