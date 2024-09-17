execute if data entity @s SelectedItem run summon item ~ ~ ~ {Item:{id:"stone_button",Count:1b}}
execute if data entity @s SelectedItem run data modify entity @e[type=item,limit=1,distance=..0.01,sort=nearest] Item set from entity @s Inventory[{Slot:-106b}]
execute unless data entity @s SelectedItem run scoreboard players add @s TrapRotation 90
execute unless data entity @s SelectedItem run scoreboard players set @s[scores={TrapRotation=360..}] TrapRotation 0
execute unless data entity @s SelectedItem run item replace entity @s weapon.mainhand from entity @s weapon.offhand 

item replace entity @s weapon.offhand with air

advancement revoke @s only cursor:rotate

playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 2
