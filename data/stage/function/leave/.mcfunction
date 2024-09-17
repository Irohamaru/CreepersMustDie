execute unless score #World Stage = @s Stage run function stage:leave/leave
execute if score #World Stage = @s Stage run function stage:leave/check_players

playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2
