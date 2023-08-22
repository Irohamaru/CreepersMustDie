scoreboard players add @s Interval 1
execute if entity @s[scores={Interval=360..}] if entity @e[tag=Enemy,type=!creeper,distance=..7] run particle angry_villager ~ ~1 ~ 0.7 1 0.7 1 1 force
execute if entity @s[scores={Interval=400..}] positioned ^ ^ ^1 if entity @e[tag=Enemy,type=!creeper,distance=..2.5] run function trap:iron_golem/heavy_attack

execute if entity @s[nbt=!{AbsorptionAmount:2048f}] run function trap:iron_golem/damaged

