scoreboard players add #Success _ 0

execute if block ^ ^ ^ #cursor:no_collision if block ^ ^ ^0.5 #cursor:can_place_on run scoreboard players add #Success _ 1

execute if entity @e[tag=FixedTrap,distance=..1] run scoreboard players set #Success _ 0
execute positioned ~ ~-1 ~ if entity @e[tag=FixedTrap,distance=..1] run scoreboard players set #Success _ 0

execute if data storage item: Item.tag{Tags:[Barricade]} positioned ~-0.5 ~ ~-0.5 if entity @s[dx=0,dz=0] run scoreboard players set #Success _ 0
