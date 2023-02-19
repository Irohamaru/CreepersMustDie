scoreboard players add @s Interval 1

execute if score @s Interval matches 15 run function trap:arrow_wall/summon
execute if score @s Interval matches 30 run function trap:arrow_wall/summon
execute if score @s Interval matches 45 run function trap:arrow_wall/summon
execute if score @s Interval matches 60 run function trap:arrow_wall/summon
execute if score @s Interval matches 75 run function trap:arrow_wall/summon
execute if score @s Interval matches 90 run function trap:arrow_wall/summon
execute if score @s Interval matches 105 run function trap:arrow_wall/summon
execute if score @s Interval matches 120 run function trap:arrow_wall/summon


execute if score @s Interval matches 180 run scoreboard players set @s Interval 0
