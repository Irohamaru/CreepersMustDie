execute unless score @s Interval matches 0.. run function trap:tnt/ignite

scoreboard players remove @s Interval 1
execute if score @s Interval matches ..0 run function trap:tnt/explode

particle smoke ~ ~1 ~ 0.1 0.2 0.1 0.02 1
