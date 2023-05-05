tp 0-0-0-0-0 ~ ~ ~
data modify storage stage: Portal set from entity @s data.Portal

execute store result score #RandMod _ run data get storage stage: Portal.Range.X
scoreboard players add #RandMod _ 1
function main:random
execute store result score # _ run data get storage stage: Portal.Pos.X
execute store result entity 0-0-0-0-0 Pos[0] double 1 run scoreboard players operation # _ += #RandMod _

execute store result score #RandMod _ run data get storage stage: Portal.Range.Y
scoreboard players add #RandMod _ 1
function main:random
execute store result score # _ run data get storage stage: Portal.Pos.Y
execute store result entity 0-0-0-0-0 Pos[1] double 1 run scoreboard players operation # _ += #RandMod _

execute store result score #RandMod _ run data get storage stage: Portal.Range.Z
scoreboard players add #RandMod _ 1
function main:random
execute store result score # _ run data get storage stage: Portal.Pos.Z
execute store result entity 0-0-0-0-0 Pos[2] double 1 run scoreboard players operation # _ += #RandMod _

execute at 0-0-0-0-0 positioned ~0.5 ~ ~0.5 run function mob:summon/fork
tp 0-0-0-0-0 0.0 0.0 0.0
