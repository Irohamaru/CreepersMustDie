tag @s add Joining

execute as 0-0-0-0-0 run function stage:join/join2

execute at @s run spawnpoint @s ~ ~ ~

tag @s remove Joining
scoreboard players operation @s Stage = #World Stage
