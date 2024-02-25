data modify storage ai: Target set value [I;0,0,0]
execute store result score #RandMod _ run data get storage ai: Pathfinding[0].Target.Range.X
scoreboard players add #RandMod _ 1
function main:random
execute store result score # _ run data get storage ai: Pathfinding[0].Target.Start.X
execute store result storage ai: Target.[0] int 1 run scoreboard players operation # _ += #RandMod _

execute store result score #RandMod _ run data get storage ai: Pathfinding[0].Target.Range.Y
scoreboard players add #RandMod _ 1
function main:random
execute store result score # _ run data get storage ai: Pathfinding[0].Target.Start.Y
execute store result storage ai: Target.[1] int 1 run scoreboard players operation # _ += #RandMod _

execute store result score #RandMod _ run data get storage ai: Pathfinding[0].Target.Range.Z
scoreboard players add #RandMod _ 1
function main:random
execute store result score # _ run data get storage ai: Pathfinding[0].Target.Start.Z
execute store result storage ai: Target.[2] int 1 run scoreboard players operation # _ += #RandMod _

data modify entity @s wander_target set from storage ai: Target
scoreboard players set #Success _ 1
