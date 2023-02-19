data modify entity @s ArmorItems[3].tag.CustomModelData set value 11
summon minecraft:armor_stand ~ ~-1.1 ~ {Tags:[Spikes,Trap],Team:Red,ArmorItems:[{},{},{},{id:"carrot_on_a_stick",Count:1b,tag:{CustomModelData:12}}],NoGravity:1b,Invisible:1b,Marker:1b}
function main:id/set
execute positioned ~ ~-1.1 ~ as @e[tag=Spikes,distance=..0.01] run function main:id/link
scoreboard players set @s Interval 70
