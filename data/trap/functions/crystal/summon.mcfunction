kill @e[tag=Mob]
execute as @e[tag=FixedTrap] at @s run function cursor:sell/remove
execute as @e[tag=Trap] run kill @s
kill @e[tag=Portal]

bossbar set crystal visible true
bossbar set crystal value 20
scoreboard players set #Wave Interval 0

summon armor_stand 2 2 2 {Tags:[Trap,Crystal],Invisible:1b,Marker:1b,Invulnerable:1b}
execute positioned 2 2 2 run scoreboard players set @e[tag=Crystal,distance=..0.01] MaxHP 20
execute positioned 2 2 2 run scoreboard players set @e[tag=Crystal,distance=..0.01] HP 20
tp @e[tag=Crystal] ~ ~ ~

spawnpoint @a ~ ~1 ~
tp @a ~ ~1 ~
