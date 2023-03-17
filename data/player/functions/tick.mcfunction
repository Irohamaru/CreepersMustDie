execute if entity @s[tag=!Initialized] run function player:init

scoreboard players add @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] HasCarrotStick 1
execute if entity @s[scores={HasCarrotStick=1..}] run function cursor:tick

execute if entity @s[scores={LeaveGame=1..}] run function player:leave_game
execute if entity @s[scores={UseCrossbow=1..}] run function player:use_crossbow
execute if entity @s[scores={UseWarpedFungus=1..}] run function player:use_warped_fungus
execute if entity @s[scores={Sneak=1..}] run function player:sneak/
execute if entity @s[scores={Talk=1..}] run function player:talk
execute if entity @s[scores={Trigger=1..}] run function player:trigger
execute if entity @s[scores={Death=1..,Health=1..}] run function player:respawn
scoreboard players reset @s UseCarrotStick

execute if entity @s[gamemode=adventure,scores={Health=1..}] if block ~ ~ ~ water run function player:drowned
