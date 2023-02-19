function cursor:check_block

execute if score #Success _ matches 1 run particle dust 0 1 0 0.5 ~0.5 ~ ~ 0 0.25 0 1 7 force @s
execute if score #Success _ matches 1 run particle dust 0 1 0 0.5 ~-0.5 ~ ~ 0 0.25 0 1 7 force @s
execute if score #Success _ matches 1 run particle dust 0 1 0 0.5 ~ ~0.5 ~ 0.25 0 0 1 7 force @s
execute if score #Success _ matches 1 run particle dust 0 1 0 0.5 ~ ~-0.5 ~ 0.25 0 0 1 7 force @s

execute unless score #Success _ matches 1 run particle dust 1 0 0 0.5 ~0.5 ~ ~ 0 0.25 0 1 7 force @s
execute unless score #Success _ matches 1 run particle dust 1 0 0 0.5 ~-0.5 ~ ~ 0 0.25 0 1 7 force @s
execute unless score #Success _ matches 1 run particle dust 1 0 0 0.5 ~ ~0.5 ~ 0.25 0 0 1 7 force @s
execute unless score #Success _ matches 1 run particle dust 1 0 0 0.5 ~ ~-0.5 ~ 0.25 0 0 1 7 force @s
