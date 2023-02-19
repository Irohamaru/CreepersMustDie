tp 0-0-0-0-0 ^ ^ ^

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

execute if entity @s[y_rotation=0] at 0-0-0-0-0 run summon minecraft:armor_stand ^ ^ ^ {Rotation:[0f,0f],Tags:[Arrow,Trap],ArmorItems:[{},{},{},{id:"carrot_on_a_stick",Count:1b,tag:{CustomModelData:31}}],NoGravity:1b,Invisible:1b,Marker:1b,Small:1b}
execute if entity @s[y_rotation=90] at 0-0-0-0-0 run summon minecraft:armor_stand ^ ^ ^ {Rotation:[90f,0f],Tags:[Arrow,Trap],ArmorItems:[{},{},{},{id:"carrot_on_a_stick",Count:1b,tag:{CustomModelData:31}}],NoGravity:1b,Invisible:1b,Marker:1b,Small:1b}
execute if entity @s[y_rotation=180] at 0-0-0-0-0 run summon minecraft:armor_stand ^ ^ ^ {Rotation:[180f,0f],Tags:[Arrow,Trap],ArmorItems:[{},{},{},{id:"carrot_on_a_stick",Count:1b,tag:{CustomModelData:31}}],NoGravity:1b,Invisible:1b,Marker:1b,Small:1b}
execute if entity @s[y_rotation=-90] at 0-0-0-0-0 run summon minecraft:armor_stand ^ ^ ^ {Rotation:[-90f,0f],Tags:[Arrow,Trap],ArmorItems:[{},{},{},{id:"carrot_on_a_stick",Count:1b,tag:{CustomModelData:31}}],NoGravity:1b,Invisible:1b,Marker:1b,Small:1b}

tp 0-0-0-0-0 0.0 0.0 0.0

playsound minecraft:entity.arrow.shoot master @a ~ ~ ~ 0.1 1.8
