data modify storage calc: Argument set value {}
execute store result storage calc: Argument.Scale float 0.02 run scoreboard players get @s MagicTime
execute store result storage calc: Argument.DeltaFlame double 0.007 run scoreboard players get @s MagicTime
execute store result storage calc: Argument.DeltaDust double 0.015 run scoreboard players get @s MagicTime
execute store result storage calc: Argument.Speed double 0.001 run scoreboard players get @s MagicTime
execute store result storage calc: Argument.Count int 0.8 run scoreboard players get @s MagicTime
execute store result storage calc: Argument.Distance double 0.04 run scoreboard players get @s MagicTime

data modify storage trap: Fireball set value {Fire:50,Stun:20,Motion:1.2}
execute store result storage trap: Fireball.Fire float 0.67 run scoreboard players get @s MagicTime
execute store result storage trap: Fireball.Motion double 0.015 run scoreboard players get @s MagicTime

function trap:fireball/explode2 with storage calc: Argument