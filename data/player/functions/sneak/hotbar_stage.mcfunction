loot replace entity @s hotbar.0 loot trap:system/sale
execute unless score Wave Display matches 0 run item replace entity @s hotbar.1 with air
execute if score Wave Display matches 0 run loot replace entity @s hotbar.1 loot trap:system/skip_to_wave1
loot replace entity @s hotbar.2 loot trap:system/skip
item replace entity @s hotbar.3 with air
loot replace entity @s hotbar.4 loot trap:system/nice
loot replace entity @s hotbar.5 loot trap:system/come_on
item replace entity @s hotbar.6 with air
loot replace entity @s hotbar.7 loot trap:system/return_to_lobby
item replace entity @s hotbar.8 with air
