tag @s remove CloseStage
execute unless score #World Stage = @s[scores={Stage=1..}] Stage run function stage:leave/leave
execute if score #World Stage matches 1.. unless score @s Stage matches 1.. run tellraw @s [{"translate":"%1$s %2$s is ongoing.","with":[{"translate":"Stage","color":"light_purple"},{"score":{"name":"#World","objective":"Stage"},"color":"light_purple"}]},{"text":"  "},{"translate":"<JOIN>","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/trigger Trigger set 1000"}}]
scoreboard players reset @s LeaveGame
