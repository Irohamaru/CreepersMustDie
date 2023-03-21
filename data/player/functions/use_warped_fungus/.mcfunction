execute if data entity @s SelectedItem.tag.ReturnToLobby run function player:use_warped_fungus/return_to_lobby
execute if data entity @s SelectedItem.tag.JoinOngoingStage run function player:use_warped_fungus/join_ongoing_stage
execute if data entity @s SelectedItem.tag.Skip run function player:use_warped_fungus/skip
execute if data entity @s SelectedItem.tag.ClearInventory run function player:use_warped_fungus/clear_inventory
execute if data entity @s SelectedItem.tag.Ready run function player:use_warped_fungus/ready
execute if data entity @s SelectedItem.tag.Wait run function player:use_warped_fungus/wait
execute if data entity @s SelectedItem.tag.Nice run function player:use_warped_fungus/nice
execute if data entity @s SelectedItem.tag.ComeOn run function player:use_warped_fungus/come_on

scoreboard players reset @s UseWarpedFungus
