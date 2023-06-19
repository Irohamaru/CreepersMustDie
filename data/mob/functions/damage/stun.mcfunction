execute unless entity @s[scores={Stun=1..}] run attribute @s generic.movement_speed modifier add 0-0-0-0-9999 "stun" -1 multiply_base
execute unless entity @s[scores={Stun=1..}] on passengers on origin run attribute @s generic.movement_speed modifier add 0-0-0-0-9999 "stun" -1 multiply_base

execute store result score @s Stun run data get storage mob: Damage.Stun
execute on passengers on origin store result score @s Stun run data get storage mob: Damage.Stun

scoreboard players operation @s StackTime -= @s Stun
