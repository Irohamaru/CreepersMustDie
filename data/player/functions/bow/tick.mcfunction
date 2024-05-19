#1tickに2増える
scoreboard players remove @s UsingBow 1

execute if score @s UsingBow matches 020 positioned ^-0.3 ^-0.1 ^1 run function player:bow/charge
execute if score @s UsingBow matches 040 positioned ^-0.3 ^-0.1 ^1 run function player:bow/charge
execute if score @s UsingBow matches 060 positioned ^-0.3 ^-0.1 ^1 run function player:bow/charge
execute if score @s UsingBow matches 080 positioned ^-0.3 ^-0.1 ^1 run function player:bow/charge
execute if score @s UsingBow matches 088 run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 
execute if score @s UsingBow matches 088.. positioned ^-0.3 ^-0.1 ^1 run particle electric_spark ~ ~ ~ 0 0 0 1 1

scoreboard players operation # UsingBow = @s UsingBow
scoreboard players operation # UsingBow %= #2 _
execute if score # UsingBow matches 1 run scoreboard players reset @s UsingBow

execute if score @s UseBow matches 1.. run function player:bow/use
