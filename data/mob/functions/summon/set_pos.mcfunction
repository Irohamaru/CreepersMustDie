execute store result score #RandMod _ run data get entity @s data.Range.X
scoreboard players add #RandMod _ 1
function main:random
execute store result score # _ run data get entity @s Pos[0]
execute store result entity @s Pos[0] double 1 run scoreboard players operation # _ += #RandMod _

execute store result score #RandMod _ run data get entity @s data.Range.Y
scoreboard players add #RandMod _ 1
function main:random
execute store result score # _ run data get entity @s Pos[1]
execute store result entity @s Pos[1] double 1 run scoreboard players operation # _ += #RandMod _

execute store result score #RandMod _ run data get entity @s data.Range.Z
scoreboard players add #RandMod _ 1
function main:random
execute store result score # _ run data get entity @s Pos[2]
execute store result entity @s Pos[2] double 1 run scoreboard players operation # _ += #RandMod _

execute at @s positioned ~0.5 ~ ~0.5 run function mob:summon/fork
tp @s ~ ~ ~
