data modify storage ai: Pathfinding set from storage stage: Detour

function mob:ai/wandering_trader/pathfinding/loop

execute if score #Success _ matches 1 run scoreboard players set @s Interval 50
execute if score #Success _ matches 1 run tag @s add Detour
execute at @s run particle angry_villager ~ ~1 ~
