execute store result score #RandMod _ run data get storage ai: Pathfinding[0].Target.Range.X
scoreboard players add #RandMod _ 1
function main:random
execute store result score # _ run data get storage ai: Pathfinding[0].Target.Start.X
execute store result storage ai: Target.Randomized.X int 1 run scoreboard players operation # _ += #RandMod _

execute store result score #RandMod _ run data get storage ai: Pathfinding[0].Target.Range.Y
scoreboard players add #RandMod _ 1
function main:random
execute store result score # _ run data get storage ai: Pathfinding[0].Target.Start.Y
execute store result storage ai: Target.Randomized.Y int 1 run scoreboard players operation # _ += #RandMod _

execute store result score #RandMod _ run data get storage ai: Pathfinding[0].Target.Range.Z
scoreboard players add #RandMod _ 1
function main:random
execute store result score # _ run data get storage ai: Pathfinding[0].Target.Start.Z
execute store result storage ai: Target.Randomized.Z int 1 run scoreboard players operation # _ += #RandMod _

data modify entity @s WanderTarget set from storage ai: Target.Randomized
scoreboard players set #Success _ 1
