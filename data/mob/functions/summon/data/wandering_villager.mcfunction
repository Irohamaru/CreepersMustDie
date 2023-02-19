summon wandering_trader ~ ~ ~ {Tags:[Mob],Attributes:[{Name:"minecraft:generic.follow_range",Base:64d},{Name:"minecraft:generic.movement_speed",Base:0d}],Silent:1b,DeathTime:19s,Invulnerable:1b}
execute store result entity @e[type=wandering_trader,distance=0,limit=1] Attributes[{Name:"minecraft:generic.movement_speed"}].Base double 0.03 run data get storage mob: MovementSpeed 100
