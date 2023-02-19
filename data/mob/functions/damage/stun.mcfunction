execute store result score _ _ run data get storage mob: Damage.Stun
scoreboard players operation @s Interval > _ _
scoreboard players operation @s StackTime -= _ _

execute unless entity @s[scores={Stun=1..}] run attribute @s generic.movement_speed modifier add 0-0-0-0-9999 "stun" -1 multiply_base
execute store result score @s Stun run data get storage mob: Damage.Stun
