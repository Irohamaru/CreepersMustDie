scoreboard players operation # Z -= @s Z

execute if score # Z matches -2 positioned ~ ~ ~1.0 run particle dust{color:[0,2,100000000],scale:1} ~ ~1.6 ~ 0.1 0.1 0.50 1 1 force
execute if score # Z matches -3 positioned ~ ~ ~1.5 run particle dust{color:[0,2,100000000],scale:1} ~ ~1.6 ~ 0.1 0.1 0.75 1 2 force
execute if score # Z matches -4 positioned ~ ~ ~2.0 run particle dust{color:[0,2,100000000],scale:1} ~ ~1.6 ~ 0.1 0.1 1.00 1 3 force
execute if score # Z matches -5 positioned ~ ~ ~2.5 run particle dust{color:[0,2,100000000],scale:1} ~ ~1.6 ~ 0.1 0.1 1.25 1 4 force
execute if score # Z matches -6 positioned ~ ~ ~3.0 run particle dust{color:[0,2,100000000],scale:1} ~ ~1.6 ~ 0.1 0.1 1.50 1 5 force
execute if score # Z matches -7 positioned ~ ~ ~3.5 run particle dust{color:[0,2,100000000],scale:1} ~ ~1.6 ~ 0.1 0.1 1.75 1 6 force
execute if score # Z matches -8 positioned ~ ~ ~4.0 run particle dust{color:[0,2,100000000],scale:1} ~ ~1.6 ~ 0.1 0.1 2.00 1 7 force

execute if score # Z matches -2 positioned ~-0.8 ~1 ~0.8 as @e[tag=Enemy,dx=0,dy=0,dz=0] positioned ~0.6 ~ ~ if entity @s[dx=0,dy=0,dz=0] at @s run function mob:damage/
execute if score # Z matches -3 positioned ~-0.8 ~1 ~0.8 as @e[tag=Enemy,dx=0,dy=0,dz=1] positioned ~0.6 ~ ~ if entity @s[dx=0,dy=0,dz=1] at @s run function mob:damage/
execute if score # Z matches -4 positioned ~-0.8 ~1 ~0.8 as @e[tag=Enemy,dx=0,dy=0,dz=2] positioned ~0.6 ~ ~ if entity @s[dx=0,dy=0,dz=2] at @s run function mob:damage/
execute if score # Z matches -5 positioned ~-0.8 ~1 ~0.8 as @e[tag=Enemy,dx=0,dy=0,dz=3] positioned ~0.6 ~ ~ if entity @s[dx=0,dy=0,dz=3] at @s run function mob:damage/
execute if score # Z matches -6 positioned ~-0.8 ~1 ~0.8 as @e[tag=Enemy,dx=0,dy=0,dz=4] positioned ~0.6 ~ ~ if entity @s[dx=0,dy=0,dz=4] at @s run function mob:damage/
execute if score # Z matches -7 positioned ~-0.8 ~1 ~0.8 as @e[tag=Enemy,dx=0,dy=0,dz=5] positioned ~0.6 ~ ~ if entity @s[dx=0,dy=0,dz=5] at @s run function mob:damage/
execute if score # Z matches -8 positioned ~-0.8 ~1 ~0.8 as @e[tag=Enemy,dx=0,dy=0,dz=6] positioned ~0.6 ~ ~ if entity @s[dx=0,dy=0,dz=6] at @s run function mob:damage/
