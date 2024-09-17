scoreboard players reset #Success _

data modify storage item: Item set from entity @s SelectedItem
data modify storage cmd: Loops set value 80

execute store result score _ Emerald run data get storage item: Item.components.minecraft:custom_data.Cost

function cursor:loop

execute unless entity @s[scores={HasCarrotStick=2}] unless data storage item: Item.components.minecraft:custom_data.Cost run title @s actionbar [{"text":"","color":"gold","bold":true},{"storage":"item:","nbt":"Item.components.minecraft:custom_name","interpret":true}]
execute unless entity @s[scores={HasCarrotStick=2}] if data storage item: Item.components.minecraft:custom_data.Cost if score _ Emerald <= Emerald Display run title @s actionbar [{"text":"","color":"gold","bold":true},{"storage":"item:","nbt":"Item.components.minecraft:custom_name","interpret":true},{"text":" ("},{"storage":"item:","nbt":"Item.components.minecraft:custom_data.Cost","bold":false},{"text":" "},{"translate":"Emerald"},{"text":")"}]
execute unless entity @s[scores={HasCarrotStick=2}] if data storage item: Item.components.minecraft:custom_data.Cost unless score _ Emerald <= Emerald Display run title @s actionbar [{"text":"","color":"red","bold":true},{"storage":"item:","nbt":"Item.components.minecraft:custom_name","interpret":true},{"text":" ("},{"storage":"item:","nbt":"Item.components.minecraft:custom_data.Cost","bold":false},{"text":" "},{"translate":"Emerald"},{"text":")"}]

#終了
execute unless score #Success _ matches 0.. run scoreboard players set @s HasCarrotStick 2
execute if entity @s[scores={HasCarrotStick=2}] run function cursor:kill
execute if entity @s[tag=Selling] unless data storage item: Item.components.minecraft:custom_data{Sale:1b} run function cursor:sell/cancel

scoreboard players operation @s HasCarrotStick *= #2 _
scoreboard players operation @s HasCarrotStick %= #4 _

data remove storage item: Item
