data modify entity @s[tag=!SilentDeath] Silent set value 0b
scoreboard players operation Emerald Display += @s Emerald
tp @s[scores={Emerald=0}] ~ -100 ~

kill @s[tag=!ChargedCreeper]
data merge entity @s[tag=ChargedCreeper] {ignited:1b,Fuse:15s,Tags:[Mob,RouteAI,ChargedCreeper]}

execute positioned ~ ~-50 ~ run kill @e[type=wandering_trader,scores={ParentID=0},distance=..3]

execute if entity @s[tag=Enemy] run function mob:combo/add
