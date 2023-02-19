execute unless entity @s[type=wandering_trader] run function main:id/search_start

execute if entity @s[tag=RouteAI] run function mob:ai/route/tick
execute if entity @s[tag=Enemy] run function mob:ai/enemy/tick
execute if entity @s[type=wandering_trader] run function mob:ai/wandering_trader/tick
execute if entity @s[tag=Unique] run function mob:ai/unique/tick

execute unless entity @s[type=wandering_trader] run function main:id/search_end
