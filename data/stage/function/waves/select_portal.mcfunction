tag @s remove TargetPortal

execute if score @s Portal matches 1 if data storage stage: Enemy{Portal:[1]} run tag @s add TargetPortal
execute if score @s Portal matches 2 if data storage stage: Enemy{Portal:[2]} run tag @s add TargetPortal
execute if score @s Portal matches 3 if data storage stage: Enemy{Portal:[3]} run tag @s add TargetPortal
execute if score @s Portal matches 4 if data storage stage: Enemy{Portal:[4]} run tag @s add TargetPortal
