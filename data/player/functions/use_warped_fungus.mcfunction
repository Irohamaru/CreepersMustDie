execute if score @s Stage matches 1.. if data entity @s SelectedItem.tag.ReturnToLobby run tellraw @s [{"translate":"The Defense Will Fail. Are You Sure to Return to the Lobby?","color":"yellow"},{"text":"  "},{"translate":"<YES>","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/trigger Trigger set 1001"}}]
execute unless score @s Stage matches 1.. if data entity @s SelectedItem.tag.ReturnToLobby run function stage:leave/
execute if data entity @s SelectedItem.tag.ReturnToLobby at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

execute if data entity @s SelectedItem.tag.Skip if data storage stage: Wave.Skip as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2
execute if data entity @s SelectedItem.tag.Skip unless data storage stage: Wave.Skip run playsound minecraft:block.lever.click master @s ~ ~ ~ 1 1
execute if data entity @s SelectedItem.tag.Skip as @e[tag=Portal] run function stage:waves/skip

execute if data entity @s SelectedItem.tag.ClearInventory run clear @s stone_button
execute if data entity @s SelectedItem.tag.ClearInventory run clear @s carrot_on_a_stick
execute if data entity @s SelectedItem.tag.ClearInventory run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

scoreboard players reset @s UseWarpedFungus
