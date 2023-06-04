data modify entity @s transformation merge value {translation:[0f,0.275f,0f]}

summon minecraft:silverfish ~ ~ ~ {Tags:[TNT,Trap],Motion:[0d,0.2d,0d],Invulnerable:1b,Silent:1b,DeathTime:19s,Attributes:[{Name:"minecraft:generic.knockback_resistance",Base:1},{Name:"minecraft:generic.movement_speed",Base:0},{Name:"minecraft:generic.attack_damage",Base:0}],ActiveEffects:[{Id:8,Amplifier:-127b,Duration:-1,ShowParticles:0b},{Id:14,Amplifier:0b,Duration:-1,ShowParticles:0b}]}
summon minecraft:interaction ~ ~ ~ {Tags:[TNT,Trap],response:true,height:1.1f,width:1.1f}
summon minecraft:slime ~ ~-100 ~ {Tags:[TNT,Trap],AbsorptionAmount:1000000f,DeathLootTable:"minecraft:empty",Size:1,ActiveEffects:[{Id:12,Amplifier:0b,Duration:-1,ShowParticles:0b},{Id:14,Amplifier:0b,Duration:-1,ShowParticles:0b}],NoAI:1b,Silent:1b,DeathTime:19s}
ride @e[type=interaction,tag=TNT,distance=..0.01,limit=1] mount @s

execute positioned ~ ~-100 ~ run ride @e[type=slime,tag=TNT,distance=..0.01,limit=1] mount @s
ride @s mount @e[type=silverfish,tag=TNT,distance=..0.01,limit=1]

function main:id/set
execute on passengers run function main:id/link
execute on vehicle run function main:id/link
