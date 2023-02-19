execute if score @s Trigger matches 1..999 run function stage:move/join

execute if score @s Trigger matches 1001 run function stage:move/close

scoreboard players reset @s Trigger
scoreboard players enable @s Trigger
