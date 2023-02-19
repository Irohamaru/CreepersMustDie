data modify entity @s ArmorItems[3].tag.CustomModelData set value 101
summon minecraft:armor_stand ~ ~ ~ {Tags:[MasherHead,Trap],Team:Red,ArmorItems:[{},{},{},{id:"carrot_on_a_stick",Count:1b,tag:{CustomModelData:102}}],NoGravity:1b,Invisible:1b,Marker:0b}
function main:id/set
execute as @e[tag=MasherHead,distance=..0.01] run function main:id/link
scoreboard players set @e[tag=MasherHead,distance=..0.01] Interval 160
