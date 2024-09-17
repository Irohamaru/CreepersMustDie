execute as @e[tag=FixedTrap,tag=!FixedPoint,distance=..5] run data modify entity @s Glowing set value 0b
data modify entity @e[tag=FixedTrap,tag=!FixedPoint,distance=..2,limit=1,sort=nearest] Glowing set value 1b
execute as @e[tag=FixedTrap,tag=!FixedPoint,distance=..2,limit=1,sort=nearest] store result storage item: Item.components.minecraft:custom_data.Cost int 1 run scoreboard players get @s Emerald

particle angry_villager ^ ^ ^-0.2

execute if score @s UseCarrotStick matches 1.. as @e[tag=FixedTrap,tag=!FixedPoint,distance=..2,limit=1,sort=nearest] at @s[tag=!InitialPlace] run function cursor:sell/sell

execute if entity @s[tag=Selling] run function cursor:kill
tag @s add Selling
scoreboard players set #Success _ 1
