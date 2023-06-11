execute if data storage stage: Wave.Skip as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2
execute unless data storage stage: Wave.Skip run playsound minecraft:block.lever.click master @s ~ ~ ~ 1 1
execute if data storage stage: Wave.Skip as @e[tag=Crystal] run function stage:waves/skip
