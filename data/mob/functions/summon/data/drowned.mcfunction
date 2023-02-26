summon minecraft:drowned ~ ~ ~ {Tags:[Mob,Enemy,RouteAI,Drowned],HandDropChances:[0f,0f],Silent:1b,Team:Enemy}

scoreboard players set #RandMod _ 3
function main:random
execute if score #RandMod _ matches 0 run data modify entity @e[tag=Drowned,distance=0,limit=1] HandItems set value [{id:"minecraft:trident",Count:1b},{}]

data modify storage mob: HP set value 300
data modify storage mob: FollowRange set value 6d
data modify storage mob: MovementSpeed set value 0.22d
data modify storage mob: Damage set value 4d
data modify storage mob: BeaconDamage set value 1
data modify storage mob: KnockbackResistance set value 0.6d
data modify storage mob: KnockbackMultiplier set value 40
data modify storage mob: Emerald set value 15
