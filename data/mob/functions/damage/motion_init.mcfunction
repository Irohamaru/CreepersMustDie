execute store result score #Calc _ run data get storage mob: Damage.Motion 100
execute store result storage mob: Damage.Motion2 double 0.0001 run scoreboard players operation #Calc _ *= @s KnockbackMultiplier
data modify storage mob: Damage.Motion2 set string storage mob: Damage.Motion2 0 -1
