execute if score Wave Display matches 0 if data storage stage: Wave.Skip run data remove storage stage: Waves[0].Loop
execute if score Wave Display matches 0 if data storage stage: Wave.Skip as @e[tag=Crystal] run function stage:waves/next
execute if score Wave Display matches 1 as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2
execute if score Wave Display matches 0 if data storage stage: Wave.Skip run function player:use_warped_fungus/system/skip_to_wave1
