data modify storage stage: Enemy merge from storage stage: Wave.Enemy[0]

execute store success score # Portal run data modify storage stage: LastPortal set from storage stage: Enemy.Portal
execute if score # Portal matches 0 on passengers run function stage:waves/select_portal

execute on passengers if entity @s[tag=TargetPortal] run function mob:summon/set_pos

data modify storage stage: Wave.Enemy append from storage stage: Wave.Enemy[0]
data remove storage stage: Wave.Enemy[0]
