data modify storage ai: Target set value [I;]
data modify storage ai: Target append from entity @e[tag=Barricade,distance=..0.01,limit=1] Pos
execute store result score # Y run data get storage ai: Target[1]
execute store result storage ai: Target[1] double 1 run scoreboard players remove # Y 50

execute positioned ~ ~-50 ~ run data modify entity @s wander_target set from storage ai: Target
tag @s add TargetChanged
