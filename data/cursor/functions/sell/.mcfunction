execute as @e[tag=FixedTrap,tag=!FixedPoint,distance=..5] run data modify entity @s Glowing set value 0b
execute as @e[tag=FixedTrap,tag=!FixedPoint,distance=..2,limit=1,sort=nearest] run data modify entity @s Glowing set value 1b
particle angry_villager ^ ^ ^-0.2

execute if score @s UseCarrotStick matches 1.. as @e[tag=FixedTrap,tag=!FixedPoint,distance=..2,limit=1,sort=nearest] at @s run function cursor:sell/sell

execute if entity @s[tag=Selling] run function cursor:kill
tag @s add Selling
