data modify entity @s[tag=!SilentDeath] Silent set value 0b
scoreboard players operation Emerald Display += @s Emerald
tp @s[scores={Emerald=0}] ~ -100 ~

data modify entity 0-0-0-0-1 Owner set from entity @s ArmorItems[3].components.minecraft:custom_data.Owner
execute as 0-0-0-0-1 on origin run kill @s

kill @s[tag=!ChargedCreeper]
data merge entity @s[tag=ChargedCreeper] {ignited:1b,Fuse:15s,Tags:[Mob,RouteAI,ChargedCreeper]}

execute if entity @s[tag=Enemy] run function mob:combo/add
