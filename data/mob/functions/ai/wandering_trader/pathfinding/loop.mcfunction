execute store result score _ Group run data get storage ai: Pathfinding[0].Group
execute if score @s Group = _ Group run function mob:ai/wandering_trader/pathfinding/check_pos

execute if score #Success _ matches 0 run data remove storage ai: Pathfinding[0]
execute if score #Success _ matches 0 if data storage ai: Pathfinding[0] run function mob:ai/wandering_trader/pathfinding/loop
