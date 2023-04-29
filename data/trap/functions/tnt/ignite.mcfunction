scoreboard players set #RandMod _ 20
execute store result score @s Interval run function main:random
scoreboard players add @s Interval 10

playsound minecraft:entity.tnt.primed master @a
execute on vehicle run data modify entity @s Motion set value [0d,0.3d,0d]
