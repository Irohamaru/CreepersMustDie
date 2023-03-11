effect give @s night_vision infinite 0 true
effect give @s saturation infinite 0 true
effect give @s slowness 10 5 false
effect give @s resistance 10 6 false
effect give @s jump_boost 10 128 false

scoreboard players reset @s Death

playsound minecraft:item.totem.use master @s ~ ~ ~ 1 0
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 0
particle totem_of_undying ~ ~3 ~ 1 1 1 0.3 30 force
particle end_rod ~ ~3 ~ 1 1 1 0.3 10 force

execute unless score #World Stage = @s Stage run function stage:leave/leave
