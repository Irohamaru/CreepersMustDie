execute if score #World Stage matches 1.. run function stage:waves/tick

execute unless entity @s[tag=Broken] run particle end_rod ~ ~4 ~ 3 4 3 0 2 force
execute unless entity @s[tag=Broken] positioned ~-4 ~ ~-4 run effect give @a[nbt=!{ActiveEffects:[{Id:10}]},dx=7,dy=5,dz=7] regeneration 1 3 false
execute as @e[tag=RouteAI,distance=..2.5] run function trap:crystal/touched
