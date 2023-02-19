execute store success score #Success _ if entity @e[tag=Barricade,distance=..2.5]
scoreboard players operation # BeaconDamage = @s BeaconDamage

execute if entity @s[tag=RouteGuide] run function mob:ai/enemy/kill

execute if score #Success _ matches 1 if entity @s[type=creeper] run data modify entity @s ignited set value 1b
execute if score #Success _ matches 1 if entity @s[type=!creeper,scores={BeaconDamage=1..}] as @e[tag=Barricade,distance=..2.5,sort=nearest,limit=1] run function trap:barricade/attacked
#Interval=..0 : Interval 1~100
#Interval=1.. : 最寄りバリケードをtarget

execute if score #Success _ matches 0 if score @s Interval matches 1.. run function mob:ai/route/stack/abandon_target
execute if score #Success _ matches 0 if score @s Interval matches ..0 run function mob:ai/route/stack/target_barricade

scoreboard players set @s StackTime 0
