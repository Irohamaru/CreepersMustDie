kill @s

execute if entity @s[y_rotation=0] run summon iron_golem ~ ~ ~ {Rotation:[0f,0f],Tags:[Trap,FixedTrap,IronGolem]}
execute if entity @s[y_rotation=90] run summon iron_golem ~ ~ ~ {Rotation:[90f,0f],Tags:[Trap,FixedTrap,IronGolem]}
execute if entity @s[y_rotation=180] run summon iron_golem ~ ~ ~ {Rotation:[180f,0f],Tags:[Trap,FixedTrap,IronGolem]}
execute if entity @s[y_rotation=-90] run summon iron_golem ~ ~ ~ {Rotation:[-90f,0f],Tags:[Trap,FixedTrap,IronGolem]}

data merge entity @e[tag=IronGolem,distance=0,limit=1] {Team:"Friendly",DeathLootTable:"minecraft:empty",Health:100f,AbsorptionAmount:1000000f,PlayerCreated:1b,ActiveEffects:[{Id:10,Amplifier:1b,Duration:2100000000,ShowParticles:0b}],Attributes:[{Name:"minecraft:generic.max_health",Base:100},{Name:"minecraft:generic.follow_range",Base:4},{Name:"minecraft:generic.movement_speed",Base:0.1},{Name:"minecraft:generic.attack_damage",Base:50}]}
scoreboard players set @e[tag=IronGolem,distance=0,limit=1] Emerald 200
