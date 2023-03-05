function stage:join/fork
scoreboard players operation #World Stage = @s Trigger
execute as @a unless score @s Stage matches 1.. run function stage:join/check_hotbar
