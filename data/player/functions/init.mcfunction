effect give @s night_vision infinite 0 true
effect give @s saturation infinite 0 true
scoreboard players enable @s Trigger
scoreboard players set @s TrapRotation 0
scoreboard players set @s Cooldown 0
tag @s add Initialized
team join Friendly @s
gamemode adventure @s
function main:id/set
execute if score #World Stage matches 1.. run tellraw @s [{"translate":"%1$s %2$s is ongoing.","with":[{"translate":"Stage","color":"light_purple"},{"score":{"name":"#World","objective":"Stage"},"color":"light_purple"}]},{"text":"  "},{"translate":"<JOIN>","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/trigger Trigger set 1000"}}]
