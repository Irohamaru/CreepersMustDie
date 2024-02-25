kill @s

execute if entity @s[y_rotation=0] run summon iron_golem ~ ~ ~ {Rotation:[0f,0f],Tags:[Trap,FixedTrap,IronGolem]}
execute if entity @s[y_rotation=90] run summon iron_golem ~ ~ ~ {Rotation:[90f,0f],Tags:[Trap,FixedTrap,IronGolem]}
execute if entity @s[y_rotation=180] run summon iron_golem ~ ~ ~ {Rotation:[180f,0f],Tags:[Trap,FixedTrap,IronGolem]}
execute if entity @s[y_rotation=-90] run summon iron_golem ~ ~ ~ {Rotation:[-90f,0f],Tags:[Trap,FixedTrap,IronGolem]}

attribute @e[tag=IronGolem,distance=0,limit=1] generic.max_absorption base set 2048
data merge entity @e[tag=IronGolem,distance=0,limit=1] {Team:"Friendly",DeathLootTable:"minecraft:empty",Health:100f,AbsorptionAmount:2048f,PlayerCreated:1b,active_effects:[{id:"minecraft:regeneration",amplifier:1b,duration:2100000000,show_particles:0b}],Attributes:[{Name:"minecraft:generic.max_health",Base:100},{Name:"minecraft:generic.follow_range",Base:6},{Name:"minecraft:generic.movement_speed",Base:0.1},{Name:"minecraft:generic.attack_damage",Base:50}]}
scoreboard players operation @e[tag=IronGolem,distance=0,limit=1] Emerald = @s Emerald
data modify entity @e[tag=IronGolem,distance=0,limit=1] Tags append from entity @s Tags[]
