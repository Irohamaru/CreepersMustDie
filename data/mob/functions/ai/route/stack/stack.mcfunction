execute store success score # _ if entity @e[tag=Barricade,distance=..2]
scoreboard players set #Success _ 0

execute if score # _ matches 1 if score @s Interval matches ..0 if data storage stage: Detour[0] on passengers on origin if entity @s[tag=!Detour] run function mob:ai/route/stack/near_barricade/detour
execute if score #Success _ matches 0 if entity @s[tag=RouteGuide] run function mob:ai/enemy/kill
execute if score # _ matches 1 if score #Success _ matches 0 run function mob:ai/route/stack/near_barricade/
execute if score # _ matches 0 run function mob:ai/route/stack/no_barricade/

scoreboard players set @s StackTime 0
