summon minecraft:piglin ~ ~ ~ {Tags:[Mob,Enemy,RouteAI,Piglin],HandDropChances:[0f,0f],Silent:1b,Team:Enemy,IsImmuneToZombification:1b}

scoreboard players set #RandMod _ 2
function main:random
execute if score #RandMod _ matches 0 run data modify entity @e[tag=Piglin,distance=0,limit=1] HandItems set value [{id:"minecraft:golden_sword",Count:1b},{}]
execute if score #RandMod _ matches 1 run data modify entity @e[tag=Piglin,distance=0,limit=1] HandItems set value [{id:"minecraft:crossbow",Count:1b},{}]

data modify storage mob: HP set value 200
data modify storage mob: FollowRange set value 18d
data modify storage mob: MovementSpeed set value 0.28d
data modify storage mob: Damage set value 4d
data modify storage mob: BeaconDamage set value 1
data modify storage mob: KnockbackResistance set value 0.3d
data modify storage mob: KnockbackMultiplier set value 75
data modify storage mob: Emerald set value 15
