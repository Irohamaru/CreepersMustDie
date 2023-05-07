data modify storage ai: Pos set from entity @e[tag=Barricade,distance=..0.01,limit=1] Pos
data modify storage ai: Target.X set from storage ai: Pos[0]
execute store result score # Y run data get storage ai: Pos[1]
execute store result storage ai: Target.Y double 1 run scoreboard players remove # Y 50
data modify storage ai: Target.Z set from storage ai: Pos[2]

execute positioned ~ ~-50 ~ run data modify entity @s WanderTarget set from storage ai: Target
tag @s add TargetChanged
