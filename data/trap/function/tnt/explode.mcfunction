effect give @a[distance=..12] resistance 1 4 true
tag @s add Damaged
function cursor:sell/remove
summon creeper ~ ~-100 ~ {Tags:[TNT],Invulnerable:1b,ExplosionRadius:3b,Fuse:0,ignited:1b}
execute positioned ~ ~-100 ~ run tp @e[type=creeper,tag=TNT] ~ ~100 ~

data modify storage mob: Damage set from storage trap: TNT
execute as @e[tag=Enemy,distance=..2.5] run function mob:damage/
execute as @e[tag=Enemy,distance=..5] run function mob:damage/
execute as @e[tag=Enemy,distance=..7.5] run function mob:damage/
