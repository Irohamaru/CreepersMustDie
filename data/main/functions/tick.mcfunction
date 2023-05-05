scoreboard players add #World Interval 1
execute if score #World Interval matches 20.. run function main:one_second

execute if score #Combo _ matches 1.. run function mob:combo/tick

execute anchored eyes as @a at @s run function player:tick

execute as @e[tag=Trap] at @s run function trap:tick

execute as @e[tag=Mob] at @s run function mob:ai/tick

execute as @e[tag=Message] at @s run function player:message

execute at @e[type=arrow,nbt={inGround:0b}] as @e[tag=Trap,nbt=!{Marker:1b},distance=..5] run data modify entity @s Marker set value 1b

kill @e[type=area_effect_cloud,tag=]
kill @e[type=experience_orb]
