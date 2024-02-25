scoreboard players remove @s Interval 1
execute if score @s Interval matches ..-2 run function mob:ai/wandering_trader/lost_parent
execute unless data entity @s wander_target run function mob:ai/wandering_trader/pathfinding/init

function mob:ai/effect/

execute if block ~ ~-1 ~ oak_trapdoor run tp @s[nbt={OnGround:1b}] ~ ~-0.01 ~
