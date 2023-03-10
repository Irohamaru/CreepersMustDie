data modify entity @s Attributes[{Name:"minecraft:generic.follow_range"}].Base set from storage mob: FollowRange
data modify entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base set from storage mob: MovementSpeed
data modify entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Base set from storage mob: Damage
data modify entity @s Attributes[{Name:"minecraft:generic.knockback_resistance"}].Base set from storage mob: KnockbackResistance
data merge entity @s {ArmorItems:[{},{},{},{id:"stone_button",Count:1b}],ArmorDropChances:[0f,0f,0f,0f],AbsorptionAmount:1000000f,DeathLootTable:"minecraft:empty",DeathTime:10s}
execute store result score @s HP store result score @s MaxHP run data get storage mob: HP
execute store result score @s BeaconDamage run data get storage mob: BeaconDamage
execute store result score @s FollowRange run data get storage mob: FollowRange
execute store result score @s KnockbackMultiplier run data get storage mob: KnockbackMultiplier
execute store result score @s Emerald run data get storage mob: Emerald
scoreboard players operation @s Group = _ Group
scoreboard players set @s Interval 0

#HP,Emerald = 100+(n-1)*20 = 20n+80%
scoreboard players set #World _ 0
execute as @a if score #World Stage = @s Stage run scoreboard players add #World _ 1
scoreboard players operation #World _ *= #20 _
scoreboard players add #World _ 80

scoreboard players operation @s HP *= #World _
scoreboard players operation @s HP /= #100 _
scoreboard players operation @s Emerald *= #World _
scoreboard players operation @s Emerald /= #100 _

execute positioned ~ ~-50 ~ run function mob:summon/data/wandering_villager
function main:id/set
execute positioned ~ ~-50 ~ as @e[type=wandering_trader,distance=0] run function main:id/link
execute positioned ~ ~-50 ~ as @e[type=wandering_trader,distance=0] run scoreboard players operation @s Group = _ Group
