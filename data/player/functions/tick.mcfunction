execute if entity @s[tag=!Initialized] run function player:init

scoreboard players reset #Success _
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] run function cursor:tick
execute unless score #Success _ matches 0.. run function cursor:kill

execute if entity @s[scores={UseCrossbow=1..}] run function player:use_crossbow
execute if entity @s[scores={UseWarpedFungus=1..}] run function player:use_warped_fungus
execute if entity @s[scores={Sneak=1..}] run function player:sneak/
execute if entity @s[scores={Talk=1..}] run function player:talk
execute if entity @s[scores={Trigger=1..}] run function player:trigger
execute if entity @s[scores={Death=1..,Health=1..}] run function player:respawn
scoreboard players reset @s UseCarrotStick

execute positioned ^ ^ ^3 as @e[tag=Trap,nbt=!{Marker:1b},distance=..3] run data modify entity @s Marker set value 1b
