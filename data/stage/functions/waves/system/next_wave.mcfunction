scoreboard players add Wave Display 1
execute store result score # _ run data get storage stage: WaveCount
execute as @a at @s run function stage:waves/system/next_wave2
