give @s arrow

execute if score @s UsingBow matches 000..19 run data merge entity @e[type=arrow,nbt=!{inGround:1b},distance=..3,limit=1,sort=nearest] {damage:2,pickup:2b}
execute if score @s UsingBow matches 020..39 run data merge entity @e[type=arrow,nbt=!{inGround:1b},distance=..3,limit=1,sort=nearest] {damage:5,pickup:2b}
execute if score @s UsingBow matches 040..59 run data merge entity @e[type=arrow,nbt=!{inGround:1b},distance=..3,limit=1,sort=nearest] {damage:8,pickup:2b}
execute if score @s UsingBow matches 060..79 run data merge entity @e[type=arrow,nbt=!{inGround:1b},distance=..3,limit=1,sort=nearest] {damage:11,pickup:2b}
execute if score @s UsingBow matches 080.. run data merge entity @e[type=arrow,nbt=!{inGround:1b},distance=..3,limit=1,sort=nearest] {Tags:[Trap,Arrow],damage:15,pickup:2b,PierceLevel:100,NoGravity:1b,item:{components:{"minecraft:potion_contents":{custom_color:16777215}}}}

execute if score @s UsingBow matches 080.. run playsound minecraft:item.trident.throw master @s ~ ~ ~ 1 1.2
execute if score @s UsingBow matches 080.. run particle minecraft:end_rod ^ ^ ^ ^ ^ ^100000000 0.000000005 0
execute if score @s UsingBow matches 080.. run particle minecraft:end_rod ^ ^ ^ ^ ^ ^100000000 0.00000001 0
execute if score @s UsingBow matches 080.. run particle minecraft:end_rod ^ ^ ^ ^ ^ ^100000000 0.00000002 0
execute if score @s UsingBow matches 080.. run particle minecraft:end_rod ^ ^ ^ ^ ^ ^100000000 0.00000004 0
execute if score @s UsingBow matches 080.. run particle minecraft:end_rod ^ ^ ^ ^ ^ ^100000000 0.00000008 0

scoreboard players reset @s UsingBow
scoreboard players reset @s UseBow
