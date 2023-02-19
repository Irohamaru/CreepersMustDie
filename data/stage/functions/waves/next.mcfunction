execute store result score _ Group run data get entity @s data.Group
data modify storage stage: Waves set from entity @s data.Waves
data modify storage stage: Wave set from storage stage: Waves[0]

execute store result score @s Interval run data get storage stage: Wave.Time 20
data modify entity @s data.Skip set from storage stage: Wave.Skip
execute if data storage stage: Wave.Enemy run function stage:waves/enemy
execute if data storage stage: Wave.System run function stage:waves/system/fork

execute store result storage stage: Wave.Loop int 0.99999 run data get storage stage: Wave.Loop

execute unless data storage stage: Wave{Loop:0} run data modify storage stage: Waves[0] set from storage stage: Wave
execute if data storage stage: Wave{Loop:0} run data remove storage stage: Waves[0]

data modify entity @s data.Waves set from storage stage: Waves
