data remove storage ai: Pos
data modify storage ai: Pos set from entity @e[tag=Barricade,limit=1,sort=nearest] Pos
data modify storage ai: Target set value {}
data modify storage ai: Target.X set from storage ai: Pos[0]
execute store result score # Y run data get storage ai: Pos[1]
execute store result storage ai: Target.Y double 1 run scoreboard players remove # Y 48
data modify storage ai: Target.Z set from storage ai: Pos[2]
execute if data storage ai: Pos positioned ~ ~-50 ~ run data modify entity @e[type=wandering_trader,scores={ParentID=0},distance=..8,limit=1] WanderTarget set from storage ai: Target
execute positioned ~ ~-50 ~ store result score @e[type=wandering_trader,scores={ParentID=0},distance=..8,limit=1] X run data get storage ai: Pos[0]
execute positioned ~ ~-50 ~ store result score @e[type=wandering_trader,scores={ParentID=0},distance=..8,limit=1] Y run data get storage ai: Pos[1]
execute positioned ~ ~-50 ~ store result score @e[type=wandering_trader,scores={ParentID=0},distance=..8,limit=1] Z run data get storage ai: Pos[2]
execute positioned ~ ~-50 ~ run tag @e[type=wandering_trader,scores={ParentID=0},distance=..8,limit=1] add TargetChanged
