tp 0-0-0-0-0 ^ ^ ^-1 ~ ~

scoreboard players set #RandMod _ 5
function main:random
execute if score #RandMod _ matches 0 as 0-0-0-0-0 at @s run tp @s ^-0.5 ^ ^
execute if score #RandMod _ matches 1 as 0-0-0-0-0 at @s run tp @s ^-0.25 ^ ^
execute if score #RandMod _ matches 3 as 0-0-0-0-0 at @s run tp @s ^0.25 ^ ^
execute if score #RandMod _ matches 4 as 0-0-0-0-0 at @s run tp @s ^0.5 ^ ^

scoreboard players set #RandMod _ 5
function main:random
execute if score #RandMod _ matches 0 as 0-0-0-0-0 at @s run tp @s ^ ^-0.5 ^
execute if score #RandMod _ matches 1 as 0-0-0-0-0 at @s run tp @s ^ ^-0.25 ^
execute if score #RandMod _ matches 3 as 0-0-0-0-0 at @s run tp @s ^ ^0.25 ^
execute if score #RandMod _ matches 4 as 0-0-0-0-0 at @s run tp @s ^ ^0.5 ^

execute at 0-0-0-0-0 run summon minecraft:armor_stand ~ ~ ~ {Tags:[Arrow,Trap],Team:Red,Invisible:1b,Marker:1b,Passengers:[{id:"minecraft:item_display",Tags:[Arrow,Trap],Team:Red,item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:31}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[2.1f,2.1f,2.1f],translation:[0f,1f,1f]}}]}
execute at 0-0-0-0-0 as @e[tag=Trap,distance=..0.01] run tp @s ~ ~ ~ ~ ~

tp 0-0-0-0-0 0.0 0.0 0.0

playsound minecraft:entity.arrow.shoot master @a ~ ~ ~ 0.1 1.8
