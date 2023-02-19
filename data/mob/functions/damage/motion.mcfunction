execute store result score #Calc _ run data get storage mob: Damage.Motion 100
scoreboard players operation #Calc _ *= @s KnockbackMultiplier
scoreboard players operation #Calc _ /= #100 _
execute positioned 0.0 0.0 0.0 positioned ^ ^ ^1 run tp 0-0-0-0-0 ^ ^ ^

execute store result score # _ run data get entity 0-0-0-0-0 Pos[0] 100
scoreboard players operation # _ *= #Calc _
execute store result entity 0-0-0-0-0 Pos[0] double 0.01 run scoreboard players operation # _ /= #100 _

execute store result score # _ run data get entity 0-0-0-0-0 Pos[1] 100
scoreboard players operation # _ *= #Calc _
execute store result entity 0-0-0-0-0 Pos[1] double 0.01 run scoreboard players operation # _ /= #100 _

execute store result score # _ run data get entity 0-0-0-0-0 Pos[2] 100
scoreboard players operation # _ *= #Calc _
execute store result entity 0-0-0-0-0 Pos[2] double 0.01 run scoreboard players operation # _ /= #100 _

data modify entity @s Motion set from entity 0-0-0-0-0 Pos
