scoreboard players operation @s HP -= # BeaconDamage

data modify entity @s[scores={HP=11..20}] item.components.minecraft:custom_model_data set value 51
data modify entity @s[scores={HP=1..10}] item.components.minecraft:custom_model_data set value 52
execute if entity @s[scores={HP=..0}] run playsound minecraft:entity.zombie.break_wooden_door master @a ~ ~ ~ 0.3 0.8
execute at @s[scores={HP=..0}] run function cursor:sell/remove

scoreboard players set @s[tag=!InitialPlace] Emerald 80
scoreboard players operation @s[tag=!InitialPlace] Emerald *= @s HP
scoreboard players operation @s[tag=!InitialPlace] Emerald /= @s MaxHP

playsound minecraft:entity.zombie.attack_wooden_door master @a ~ ~ ~ 0.3 1.2
particle block{block_state:"oak_planks"} ~ ~1 ~ 0.5 0.3 0.5 1 10 force

