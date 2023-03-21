scoreboard players set @s Trigger 1000
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

function player:sneak/end
scoreboard players set Sneak 0
