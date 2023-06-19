execute store result score # X run data get entity @s Pos[0]
execute store result score # Z run data get entity @s Pos[2]

execute if score @s X = # X if score @s Z = # Z run function mob:ai/route/stack/stack

scoreboard players operation @s X = # X
scoreboard players operation @s Z = # Z

function mob:ai/route/stack/reset
