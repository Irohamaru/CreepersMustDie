effect give @s night_vision 1000000 0 true
effect give @s saturation 1000000 0 true
scoreboard players enable @s Trigger
scoreboard players set @s TrapRotation 0
tag @s add Initialized
team join Friendly @s
gamemode adventure @s
function main:id/set
