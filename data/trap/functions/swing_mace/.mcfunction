scoreboard players add @s Interval 1

execute store result score # _ run data get entity @s Rotation[1]
execute if score @s Interval matches 1..48 run scoreboard players add # _ 3
execute if score @s Interval matches 50 run scoreboard players add # _ 5
execute if score @s Interval matches 50 run playsound minecraft:entity.iron_golem.hurt master @a ~ ~ ~ 0.4 0.5

execute if score @s Interval matches 71..118 run scoreboard players remove # _ 3
execute if score @s Interval matches 120 run scoreboard players remove # _ 5
execute if score @s Interval matches 120 run playsound minecraft:entity.iron_golem.hurt master @a ~ ~ ~ 0.4 0.5

execute store result entity @s Rotation[1] float 1 run scoreboard players get # _

execute if score @s Interval matches 50 rotated ~ 0 run particle item polished_blackstone ^ ^ ^-2.5 1 0 1 0 5 force
execute if score @s Interval matches 120 rotated ~ 0 run particle item polished_blackstone ^ ^ ^2.5 1 0 1 0 5 force

execute if score @s Interval matches 1..50 positioned ^ ^-1.5 ^ run function trap:swing_mace/attack
execute if score @s Interval matches 71..120 positioned ^ ^-1.5 ^ run function trap:swing_mace/attack

execute if score @s Interval matches 140 run scoreboard players set @s Interval 0
