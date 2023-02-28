tag @s remove CloseStage
execute unless score #World Stage = @s Stage run function stage:leave/leave
scoreboard players reset @s LeaveGame
