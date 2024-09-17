execute store result score _ _ run data get storage mob: Damage.Ice
execute if score _ _ matches 1.. run particle item{item:"ice"} ~ ~1 ~ 0.2 0.5 0.2 0.1 10 force
function mob:damage/type/ice2
execute positioned as @s positioned ~ ~-50 ~ as @n[type=wandering_trader,distance=..1] run function mob:damage/type/ice2
scoreboard players operation _ HP += _ _