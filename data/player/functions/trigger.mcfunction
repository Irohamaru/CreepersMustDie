execute if score @s Trigger matches 1..999 run function stage:join/

execute if score @s Trigger matches 1000 run scoreboard players operation @s Stage = #World Stage
execute if score @s Trigger matches 1000 run function stage:join/join
execute if score @s Trigger matches 1001 run function stage:leave/

scoreboard players reset @s Trigger
scoreboard players enable @s Trigger
