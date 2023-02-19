execute store result bossbar crystal value run scoreboard players operation @e[tag=Crystal,distance=..0.01] HP -= @s BeaconDamage
execute as @e[tag=Crystal,tag=!Broken,scores={HP=..0},distance=..0.01] run function trap:crystal/broken

execute as @a at @s run playsound minecraft:entity.zombie.attack_wooden_door master @s ~ ~ ~ 0.6 1
execute as @a at @s run playsound minecraft:block.glass.break master @s
particle explosion ~ ~ ~ 0 0 0 1 0 force
