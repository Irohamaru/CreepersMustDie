data modify storage item: Item set from entity @s SelectedItem
data modify storage cmd: Loops set value 80

execute store result score _ Emerald run data get storage item: Item.tag.Cost
#title @s actionbar {"text":""}
execute if score _ Emerald <= Emerald Display run title @s actionbar [{"text":"","color":"gold","bold":true},{"storage":"item:","nbt":"Item.tag.display.Name","interpret":true},{"text":" ("},{"storage":"item:","nbt":"Item.tag.Cost","bold":false},{"translate":"Emerald"},{"text":")"}]
execute unless score _ Emerald <= Emerald Display run title @s actionbar [{"text":"","color":"red","bold":true},{"storage":"item:","nbt":"Item.tag.display.Name","interpret":true},{"text":" ("},{"storage":"item:","nbt":"Item.tag.Cost","bold":false},{"translate":"Emerald"},{"text":")"}]

execute positioned ^ ^ ^4 as @e[tag=FixedTrap,distance=..4] run data modify entity @s Marker set value 1b

function cursor:loop

data remove storage item: Item
