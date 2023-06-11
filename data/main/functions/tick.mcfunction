scoreboard players add #World Interval 1
execute if score #World Interval matches 20.. run function main:one_second

execute if score #Combo _ matches 1.. run function mob:combo/tick

execute anchored eyes as @a at @s run function player:tick

execute as @e[tag=Trap] at @s run function trap:tick

execute as @e[tag=Mob] at @s run function mob:ai/tick

execute as @e[tag=Message] at @s run function player:message

kill @e[type=area_effect_cloud,tag=]
kill @e[type=experience_orb]
