execute on vehicle run kill @s
tag @s remove PlacingTrap
data modify entity @s Glowing set value 0b
data modify entity @s Tags append from storage item: Item.tag.Tags[]
team join Red @s

scoreboard players operation @s Emerald = _ Emerald
scoreboard players operation Emerald Display -= _ Emerald

playsound minecraft:block.anvil.place master @a ~ ~ ~ 1 1
particle minecraft:firework ^ ^ ^-1 0.5 0.5 0.5 0 30
