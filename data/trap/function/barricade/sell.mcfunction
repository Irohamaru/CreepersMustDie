fill ~-0.5 ~1 ~-0.5 ~0.5 ~1 ~0.5 air
fill ~-0.5 ~ ~-0.5 ~0.5 ~ ~0.5 air
fill ~-0.5 ~-49 ~-0.5 ~0.5 ~-49 ~0.5 air

execute store result score # X run data get entity @s Pos[0]
execute store result score # Y run data get entity @s Pos[1]
execute store result score # Z run data get entity @s Pos[2]
execute as @e[type=wandering_trader,tag=TargetChanged] if score # X = @s X if score # Y = @s Y if score # Z = @s Z run function mob:ai/wandering_trader/reset_target
