function main:id/search_start

execute as @e[tag=Fireball,tag=Charging,scores={ParentID=0}] at @s run function trap:fireball/charge/end2

function main:id/search_end