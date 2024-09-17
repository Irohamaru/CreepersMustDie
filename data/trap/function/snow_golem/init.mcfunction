kill @s

execute if entity @s[y_rotation=0] run summon snow_golem ~ ~ ~ {Rotation:[0f,0f],Tags:[Trap,FixedTrap,SnowGolem]}
execute if entity @s[y_rotation=90] run summon snow_golem ~ ~ ~ {Rotation:[90f,0f],Tags:[Trap,FixedTrap,SnowGolem]}
execute if entity @s[y_rotation=180] run summon snow_golem ~ ~ ~ {Rotation:[180f,0f],Tags:[Trap,FixedTrap,SnowGolem]}
execute if entity @s[y_rotation=-90] run summon snow_golem ~ ~ ~ {Rotation:[-90f,0f],Tags:[Trap,FixedTrap,SnowGolem]}

attribute @e[tag=SnowGolem,distance=0,limit=1] minecraft:max_absorption base set 2048
data merge entity @e[tag=SnowGolem,distance=0,limit=1] {Team:"Friendly",DeathLootTable:"minecraft:empty",Health:100f,AbsorptionAmount:2048f,PlayerCreated:1b,active_effects:[{id:"minecraft:regeneration",amplifier:1b,duration:2100000000,show_particles:0b}],attributes:[{Name:"minecraft:minecraft:max_health",Base:100},{Name:"minecraft:minecraft:follow_range",Base:18},{Name:"minecraft:minecraft:movement_speed",Base:0}]}
scoreboard players operation @e[tag=SnowGolem,distance=0,limit=1] Emerald = @s Emerald
data modify entity @e[tag=SnowGolem,distance=0,limit=1] Tags append from entity @s Tags[]
