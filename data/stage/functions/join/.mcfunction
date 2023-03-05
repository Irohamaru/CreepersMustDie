execute if score #World Stage matches 1.. run tellraw @s [{"translate":"Stage %s is ongoing.","bold":true},{"text":"  "},{"translate":"<JOIN>","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/trigger Trigger set 1000"}}]
execute unless score #World Stage matches 1.. run function stage:join/create
