execute if score @s Stage matches 1.. run tellraw @s [{"translate":"The Defense Will Fail. Are You Sure to Return to the Lobby?","color":"yellow"},{"text":"  "},{"translate":"<YES>","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/trigger Trigger set 1001"}}]
execute unless score @s Stage matches 1.. run function stage:leave/
execute at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2
