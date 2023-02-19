tag @s add Talking
execute positioned ^ ^ ^3 as @e[type=villager,distance=..3] positioned as @s positioned ^ ^ ^1000 facing entity @a[tag=Talking] eyes positioned ^ ^ ^1000 positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0,dy=0,dz=0] run tag @s add TalkingVillager

tellraw @s [{"text":""},{"selector":"@e[tag=TalkingVillager,distance=..7,limit=1,sort=nearest]","color":"yellow"},{"text":": "},{"entity":"@e[tag=TalkingVillager,distance=..7,limit=1,sort=nearest]","nbt":"ArmorItems[3].tag.Talk","interpret":true}]

execute as @e[tag=TalkingVillager,distance=..7,tag=!NoTurn,limit=1,sort=nearest] facing entity @s feet facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ 0
execute at @e[tag=TalkingVillager,distance=..7,limit=1,sort=nearest] run playsound entity.villager.ambient master @a

tag @e[type=villager,distance=..7] remove TalkingVillager
tag @s remove Talking
scoreboard players reset @s Talk
