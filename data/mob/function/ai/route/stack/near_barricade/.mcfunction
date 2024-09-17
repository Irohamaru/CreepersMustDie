scoreboard players operation # BeaconDamage = @s BeaconDamage

execute if entity @s[type=creeper] run data modify entity @s ignited set value 1b
execute if entity @s[type=!creeper,scores={BeaconDamage=1..}] as @n[tag=Barricade,distance=..2.5] run function trap:barricade/attacked
