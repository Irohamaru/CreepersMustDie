particle minecraft:electric_spark ~01 ~ ~ -1 0 0 1 0 normal @s
particle minecraft:electric_spark ~-1 ~ ~ 01 0 0 1 0 normal @s
particle minecraft:electric_spark ~ ~ ~-1 0 0 01 1 0 normal @s
particle minecraft:electric_spark ~ ~ ~01 0 0 -1 1 0 normal @s
particle minecraft:electric_spark ~00.8 ~ ~00.8 -1 0 -1 1 0 normal @s
particle minecraft:electric_spark ~-0.8 ~ ~-0.8 01 0 01 1 0 normal @s
particle minecraft:electric_spark ~-0.8 ~ ~00.8 01 0 -1 1 0 normal @s
particle minecraft:electric_spark ~00.8 ~ ~-0.8 -1 0 01 1 0 normal @s

execute if score @s UsingBow matches 020 run playsound minecraft:item.crossbow.loading_start master @s ~ ~ ~ 1 1
execute if score @s UsingBow matches 040 run playsound minecraft:item.crossbow.loading_middle master @s ~ ~ ~ 1 0.8
execute if score @s UsingBow matches 060 run playsound minecraft:item.crossbow.loading_middle master @s ~ ~ ~ 1 1.2
