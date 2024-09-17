scoreboard players add # Portal 1

summon marker 2 2 2 {Tags:[Portal,Initializing]}

data modify entity @e[tag=Portal,tag=Initializing,distance=..0.01,limit=1] data.Portal set from storage stage: Portals[0]
scoreboard players operation @e[tag=Portal,tag=Initializing,distance=..0.01] Portal = # Portal

tag @e[tag=Portal,tag=Initializing,distance=..0.01] remove Initializing

data remove storage stage: Portals[0]
execute if data storage stage: Portals[0] run function stage:join/summon_portal
