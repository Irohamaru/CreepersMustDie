scoreboard players operation # Interval = @s Interval

execute if score @s FollowRange matches 3 if predicate mob:has_target/3 run scoreboard players set @s Interval 20
execute if score @s FollowRange matches 6 if predicate mob:has_target/6 run scoreboard players set @s Interval 20
execute if score @s FollowRange matches 12 if predicate mob:has_target/12 run scoreboard players set @s Interval 20
execute if score @s FollowRange matches 18 if predicate mob:has_target/18 run scoreboard players set @s Interval 20
execute if score @s FollowRange matches 24 if predicate mob:has_target/24 run scoreboard players set @s Interval 20
execute if score @s FollowRange matches 36 if predicate mob:has_target/36 run scoreboard players set @s Interval 20

execute store result entity @s[tag=!TargetFound,scores={Interval=20}] Attributes[{Name:"minecraft:generic.follow_range"}].Base double 2 run data get entity @s Attributes[{Name:"minecraft:generic.follow_range"}].Base
tag @s[tag=!TargetFound,scores={Interval=20}] add TargetFound

execute if score # Interval matches 0 if score @s Interval matches 20 run function mob:ai/route/stack/reset
