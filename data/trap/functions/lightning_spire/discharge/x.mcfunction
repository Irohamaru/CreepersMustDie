scoreboard players operation # X -= @s X

execute if score # X matches -2 positioned ~1.0 ~ ~ run particle dust{color:[0,2,100000000],scale:1} ~ ~1.6 ~ 0.50 0.1 0.1 1 1 force
execute if score # X matches -3 positioned ~1.5 ~ ~ run particle dust{color:[0,2,100000000],scale:1} ~ ~1.6 ~ 0.75 0.1 0.1 1 2 force
execute if score # X matches -4 positioned ~2.0 ~ ~ run particle dust{color:[0,2,100000000],scale:1} ~ ~1.6 ~ 1.00 0.1 0.1 1 3 force
execute if score # X matches -5 positioned ~2.5 ~ ~ run particle dust{color:[0,2,100000000],scale:1} ~ ~1.6 ~ 1.25 0.1 0.1 1 4 force
execute if score # X matches -6 positioned ~3.0 ~ ~ run particle dust{color:[0,2,100000000],scale:1} ~ ~1.6 ~ 1.50 0.1 0.1 1 5 force
execute if score # X matches -7 positioned ~3.5 ~ ~ run particle dust{color:[0,2,100000000],scale:1} ~ ~1.6 ~ 1.75 0.1 0.1 1 6 force
execute if score # X matches -8 positioned ~4.0 ~ ~ run particle dust{color:[0,2,100000000],scale:1} ~ ~1.6 ~ 2.00 0.1 0.1 1 7 force

execute if score # X matches -2 positioned ~0.8 ~1 ~-0.8 as @e[tag=Enemy,dx=0,dy=0,dz=0] positioned ~ ~ ~0.6 if entity @s[dx=0,dy=0,dz=0] at @s run function mob:damage/
execute if score # X matches -3 positioned ~0.8 ~1 ~-0.8 as @e[tag=Enemy,dx=1,dy=0,dz=0] positioned ~ ~ ~0.6 if entity @s[dx=1,dy=0,dz=0] at @s run function mob:damage/
execute if score # X matches -4 positioned ~0.8 ~1 ~-0.8 as @e[tag=Enemy,dx=2,dy=0,dz=0] positioned ~ ~ ~0.6 if entity @s[dx=2,dy=0,dz=0] at @s run function mob:damage/
execute if score # X matches -5 positioned ~0.8 ~1 ~-0.8 as @e[tag=Enemy,dx=3,dy=0,dz=0] positioned ~ ~ ~0.6 if entity @s[dx=3,dy=0,dz=0] at @s run function mob:damage/
execute if score # X matches -6 positioned ~0.8 ~1 ~-0.8 as @e[tag=Enemy,dx=4,dy=0,dz=0] positioned ~ ~ ~0.6 if entity @s[dx=4,dy=0,dz=0] at @s run function mob:damage/
execute if score # X matches -7 positioned ~0.8 ~1 ~-0.8 as @e[tag=Enemy,dx=5,dy=0,dz=0] positioned ~ ~ ~0.6 if entity @s[dx=5,dy=0,dz=0] at @s run function mob:damage/
execute if score # X matches -8 positioned ~0.8 ~1 ~-0.8 as @e[tag=Enemy,dx=6,dy=0,dz=0] positioned ~ ~ ~0.6 if entity @s[dx=6,dy=0,dz=0] at @s run function mob:damage/
