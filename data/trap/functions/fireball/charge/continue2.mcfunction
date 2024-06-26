scoreboard players operation @s MagicTime = # MagicTime
execute if score @s MagicTime matches 201.. run scoreboard players set @s MagicTime 200

execute on passengers store result entity @s transformation.scale[] float 0.0015 run scoreboard players get # MagicTime

data modify storage calc: left_rotation set value {axis:[0f,0.9f,0.43589f]}
execute store result storage calc: left_rotation.angle float 0.21 run scoreboard players get # MagicTime
execute on passengers run data modify entity @s transformation.left_rotation set from storage calc: left_rotation
execute if score # MagicTime matches 200 on passengers run data modify entity @s item.components.minecraft:enchantment_glint_override set value true

tp @s ^ ^ ^1.5 ~ ~
