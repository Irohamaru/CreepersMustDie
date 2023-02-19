loot replace entity @s hotbar.0 loot trap:system/clear_inventory
item replace entity @s hotbar.1 with air
item replace entity @s hotbar.2 with air
execute unless score #World Stage matches 1.. run item replace entity @s hotbar.3 with air
execute if score #World Stage matches 1.. run loot replace entity @s hotbar.3 loot trap:system/join_ongoing_stage
item replace entity @s hotbar.4 with air
item replace entity @s hotbar.5 with air
item replace entity @s hotbar.6 with air
loot replace entity @s hotbar.7 loot trap:system/return_to_lobby
item replace entity @s hotbar.8 with air
