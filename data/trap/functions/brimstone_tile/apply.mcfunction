execute if entity @s[tag=Enemy] run scoreboard players add # Burning 1

execute unless score @s Burning matches 1.. run attribute @s generic.movement_speed modifier add 0-0-0-0-20 "burning" 0.15 add_multiplied_base
execute unless score @s Burning matches 1.. run data modify entity @s HasVisualFire set value 1b
execute unless score @s Burning matches 1.. run playsound minecraft:entity.generic.burn master @a ~ ~ ~ 1 1

scoreboard players set @s Burning 50
