scoreboard players remove # _ 1
execute unless block ^ ^ ^ #cursor:no_collision run scoreboard players set # _ 0
execute if score # _ matches 0 positioned ^ ^ ^-0.4 run tp @s ^ ^-0.5 ^
execute if score # _ matches 1.. if block ^ ^ ^ #cursor:no_collision positioned ^ ^ ^0.1 run function trap:tnt/hold2
