data modify block 0 0 0 Items set from entity @s Inventory
clear @s
item replace entity @s container.0 from block 0 0 0 container.0
item replace entity @s container.1 from block 0 0 0 container.1
item replace entity @s container.2 from block 0 0 0 container.2
item replace entity @s container.3 from block 0 0 0 container.3
item replace entity @s container.4 from block 0 0 0 container.4
item replace entity @s container.5 from block 0 0 0 container.5
item replace entity @s container.6 from block 0 0 0 container.6
item replace entity @s container.7 from block 0 0 0 container.7
item replace entity @s container.8 from block 0 0 0 container.8

execute if data entity @s Inventory[{id:"minecraft:crossbow"}] unless data entity @s Inventory[{id:"minecraft:crossbow",components:{"minecraft:charged_projectiles":[{count:1,id:"minecraft:arrow"}]}}] unless data entity @s Inventory[{id:"minecraft:arrow"}] run give @s arrow
execute if data entity @s Inventory[{id:"minecraft:bow"}] run give @s arrow

execute if data entity @s {Inventory:[]} run tellraw @s [{"text":""},{"selector":"@s","color":"yellow"},{"text":": "},{"translate":"Defending without items is too reckless."}]
execute unless data entity @s {Inventory:[]}