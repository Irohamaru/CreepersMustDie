data modify entity @s Attributes[{Name:"minecraft:generic.follow_range"}].Base set from storage mob: FollowRange
data modify entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base set from storage mob: MovementSpeed
data modify entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Base set from storage mob: Damage
data modify entity @s Attributes[{Name:"minecraft:generic.knockback_resistance"}].Base set from storage mob: KnockbackResistance
attribute @s generic.max_absorption base set 2048
data merge entity @s {ArmorItems:[{},{},{},{id:"stone_button",Count:1b}],ArmorDropChances:[0f,0f,0f,0f],AbsorptionAmount:2048f,DeathLootTable:"minecraft:empty",DeathTime:10s}
effect give @s fire_resistance infinite 0 true
execute store result score @s HP store result score @s MaxHP run data get storage mob: HP
execute store result score @s BeaconDamage run data get storage mob: BeaconDamage
execute store result score @s FollowRange run data get storage mob: FollowRange
execute store result score @s KnockbackMultiplier run data get storage mob: KnockbackMultiplier
execute store result score @s Emerald run data get storage mob: Emerald
scoreboard players operation @s Group = _ Group
scoreboard players set @s Interval 0

#HP = 100+(n-1)*20 = 20n+80%
scoreboard players set #World _ 0
execute as @a[gamemode=adventure] if score #World Stage = @s Stage run scoreboard players add #World _ 20
scoreboard players add #World _ 80

scoreboard players operation @s HP *= #World _
scoreboard players operation @s HP /= #100 _

#Emerald = 100+(n-1)*10 = 10n+90% = (20n+80)/2+50%
scoreboard players operation #World _ /= #2 _
scoreboard players add #World _ 50

scoreboard players operation @s Emerald *= #World _
scoreboard players operation @s Emerald /= #100 _
function mob:ai/route/stack/reset

function main:id/set
execute store result entity @s ArmorItems[3].components.minecraft:custom_data.EnemyID int 1 run scoreboard players get @s ID
data modify entity @s ArmorItems[3].components.minecraft:custom_data.EnemyID set string entity @s ArmorItems[3].components.minecraft:custom_data.EnemyID

execute positioned ~ ~-50 ~ run function mob:summon/data/wandering_villager
execute positioned ~ ~-50 ~ store result score @e[type=wandering_trader,distance=0] Group run data get storage stage: Enemy.Group

execute positioned ~ ~-50 ~ run data modify entity @s ArmorItems[3].components.minecraft:custom_data.Owner set from entity @e[type=wandering_trader,distance=0,limit=1] UUID
execute if entity @s[tag=Float] positioned ~ ~-50 ~ run attribute @e[type=wandering_trader,distance=0,limit=1] generic.scale base set 0.5
execute if entity @s[tag=Float] positioned ~ ~-50 ~ run effect give @e[type=wandering_trader,distance=0,limit=1] slow_falling infinite 0 false
