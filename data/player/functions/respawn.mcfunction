effect give @s night_vision 1000000 0 true
effect give @s saturation 1000000 0 true
effect give @s slowness 5 3 false
effect give @s resistance 5 6 false
effect give @s jump_boost 5 128 false
effect give @s weakness 5 128 false

scoreboard players reset @s Death

playsound minecraft:item.totem.use master @s ~ ~ ~ 1 0
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 0
particle totem_of_undying ~ ~3 ~ 1 1 1 0.3 30 force
particle end_rod ~ ~3 ~ 1 1 1 0.3 10 force

execute unless score #World Stage = @s Stage run function stage:leave/leave
