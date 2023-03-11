effect give @s night_vision infinite 0 true
effect give @s saturation infinite 0 true
scoreboard players enable @s Trigger
scoreboard players set @s TrapRotation 0
tag @s add Initialized
team join Friendly @s
gamemode adventure @s
function main:id/set
