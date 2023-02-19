execute store result score # X run data get storage ai: Pathfinding[0].Area.Start.X
execute store result score # Y run data get storage ai: Pathfinding[0].Area.Start.Y
execute store result score # Z run data get storage ai: Pathfinding[0].Area.Start.Z
execute store result score $ X run data get storage ai: Pathfinding[0].Area.End.X
execute store result score $ Y run data get storage ai: Pathfinding[0].Area.End.Y
execute store result score $ Z run data get storage ai: Pathfinding[0].Area.End.Z
execute store result score @s X run data get entity @s Pos[0]
execute store result score @s Y run data get entity @s Pos[1]
execute store result score @s Z run data get entity @s Pos[2]
execute if score # X <= @s X if score @s X <= $ X if score # Y <= @s Y if score @s Y <= $ Y if score # Z <= @s Z if score @s Z <= $ Z run function mob:ai/wandering_trader/pathfinding/apply
#tellraw @p [{"text":"X:"},{"score":{"name":"#","objective":"_"}},{"text":".."},{"score":{"name":"@s","objective":"_"}},{"text":".."},{"score":{"name":"$","objective":"_"}},{"text":"  Y:"},{"score":{"name":"#","objective":"_"}},{"text":".."},{"score":{"name":"@s","objective":"_"}},{"text":".."},{"score":{"name":"$","objective":"_"}},{"text":"  Z:"},{"score":{"name":"#","objective":"_"}},{"text":".."},{"score":{"name":"@s","objective":"_"}},{"text":".."},{"score":{"name":"$","objective":"_"}}]
