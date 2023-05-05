function stage:join/fork
execute positioned 2 2 2 run function stage:join/summon_crystal
scoreboard players operation #World Stage = @s Trigger

function stage:join/join
execute as @a[tag=!Ready] unless score @s Stage matches 1.. run tellraw @s [{"translate":"%1$s %2$s has started!","with":[{"translate":"Stage","color":"light_purple"},{"score":{"name":"#World","objective":"Stage"},"color":"light_purple"}]},{"text":"  "},{"translate":"<JOIN>","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/trigger Trigger set 1000"}}]
execute as @a[tag=Ready] unless score @s Stage matches 1.. run function stage:join/check_hotbar
execute as @a[tag=Ready] unless score @s Stage matches 1.. if score @s _ matches 1 run function stage:join/join
