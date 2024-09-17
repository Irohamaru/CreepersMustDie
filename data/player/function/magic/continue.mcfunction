execute unless score @s SelectedItemSlot = # SelectedItemSlot run scoreboard players set @s MagicTime 0
execute unless score @s SelectedItemSlot = # SelectedItemSlot run scoreboard players set @s UsingMagic 0

execute if data storage item: Item.components.minecraft:custom_data.Fireball run function trap:fireball/charge/continue

scoreboard players add @s MagicTime 1
