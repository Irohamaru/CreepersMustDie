function cursor:check_block

execute if score #Success _ matches 1 run function cursor:tp
execute unless score #Success _ matches 1 run function cursor:kill

execute if score #Success _ matches 1 run particle dust{color:[0,1,0],scale:0.5} ~0.5 ~ ~ 0 0.25 0 1 7 force @s
execute if score #Success _ matches 1 run particle dust{color:[0,1,0],scale:0.5} ~-0.5 ~ ~ 0 0.25 0 1 7 force @s
execute if score #Success _ matches 1 run particle dust{color:[0,1,0],scale:0.5} ~ ~0.5 ~ 0.25 0 0 1 7 force @s
execute if score #Success _ matches 1 run particle dust{color:[0,1,0],scale:0.5} ~ ~-0.5 ~ 0.25 0 0 1 7 force @s

execute unless score #Success _ matches 1 run particle dust{color:[1,0,0],scale:0.5} ~0.5 ~ ~ 0 0.25 0 1 7 force @s
execute unless score #Success _ matches 1 run particle dust{color:[1,0,0],scale:0.5} ~-0.5 ~ ~ 0 0.25 0 1 7 force @s
execute unless score #Success _ matches 1 run particle dust{color:[1,0,0],scale:0.5} ~ ~0.5 ~ 0.25 0 0 1 7 force @s
execute unless score #Success _ matches 1 run particle dust{color:[1,0,0],scale:0.5} ~ ~-0.5 ~ 0.25 0 0 1 7 force @s
