data modify entity @s Tags append from storage stage: Enemy.Name

execute if entity @s[tag=BabyRunner] run function mob:summon/data/baby_runner
execute if entity @s[tag=ChargedCreeper] run function mob:summon/data/charged_creeper
execute if entity @s[tag=Creeper] run function mob:summon/data/creeper
execute if entity @s[tag=Drowned] run function mob:summon/data/drowned
execute if entity @s[tag=Hoglin] run function mob:summon/data/hoglin
execute if entity @s[tag=Husk] run function mob:summon/data/husk
execute if entity @s[tag=Piglin] run function mob:summon/data/piglin
execute if entity @s[tag=Ravager] run function mob:summon/data/ravager
execute if entity @s[tag=Zombie] run function mob:summon/data/zombie
execute if entity @s[tag=Skeleton] run function mob:summon/data/skeleton
execute if entity @s[tag=RouteGuide] run function mob:summon/data/route_guide

data modify entity @s Tags set value [Portal]

execute as @e[tag=Mob,distance=0] run function mob:summon/apply 
