kill @e[tag=Mob]
execute as @e[tag=FixedTrap] at @s run function cursor:sell/remove
execute as @e[tag=Trap] run kill @s
kill @e[tag=Portal]

bossbar set crystal visible true
bossbar set crystal value 20
scoreboard players set Wave Display 0

summon armor_stand ~ ~ ~ {Tags:[Trap,Crystal]}
scoreboard players set @e[tag=Crystal,distance=..0.01] MaxHP 20
scoreboard players set @e[tag=Crystal,distance=..0.01] HP 20

scoreboard players set # Portal 0
function stage:join/summon_portal
execute as @e[tag=Portal,distance=..0.01] run ride @s mount @e[tag=Crystal,distance=..0.01,limit=1]

data modify entity @e[tag=Crystal,distance=..0.01,limit=1] Pos set from storage stage: CrystalPos
