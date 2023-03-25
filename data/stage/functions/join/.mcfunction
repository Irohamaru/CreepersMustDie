execute if score #World Stage matches 1.. run tellraw @s [{"translate":"%1$s %2$s is ongoing.","with":[{"translate":"Stage","color":"light_purple"},{"score":{"name":"#World","objective":"Stage"},"color":"light_purple"}]},{"text":"  "},{"translate":"<JOIN>","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/trigger Trigger set 1000"}}]
execute unless score #World Stage matches 1.. store success score @s _ run function stage:join/check_hotbar
execute unless score #World Stage matches 1.. if score @s _ matches 1 run function stage:join/create
