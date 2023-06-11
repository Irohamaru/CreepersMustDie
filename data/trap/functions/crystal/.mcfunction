execute if score #World Stage matches 1.. run function stage:waves/tick

execute unless entity @s[tag=Broken] run particle end_rod ~ ~4 ~ 3 4 3 0 2 force
execute unless entity @s[tag=Broken] positioned ~-4 ~ ~-4 as @a[dx=7,dy=5,dz=7] run function trap:crystal/effect
execute as @e[tag=RouteAI,distance=..2.5] run function trap:crystal/touched
