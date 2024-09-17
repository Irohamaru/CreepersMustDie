scoreboard players operation # BeaconDamage = @s BeaconDamage

execute if entity @s[type=creeper] run data modify entity @s ignited set value 1b
execute if entity @s[type=!creeper,scores={BeaconDamage=1..}] as @e[tag=Barricade,distance=..2.5,sort=nearest,limit=1] run function trap:barricade/attacked
