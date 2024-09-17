data modify storage calc: Argument set value {Name:"small_flame"}
execute if score @s MagicTime matches 100 run data modify storage calc: Name set value "flame"
execute store result storage calc: Argument.Scale float 0.0125 run scoreboard players get @s MagicTime
execute store result storage calc: Argument.Delta double 0.0015 run scoreboard players get @s MagicTime
execute store result storage calc: Argument.Speed double 0.0005 run scoreboard players get @s MagicTime
execute store result storage calc: Argument.Count int 0.01 run scoreboard players get @s MagicTime

function trap:fireball/tick2 with storage calc: Argument

execute if entity @s[tag=!Charging] run function trap:fireball/tick_fired
