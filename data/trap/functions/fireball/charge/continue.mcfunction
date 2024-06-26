scoreboard players set # MagicTime 30
scoreboard players operation # MagicTime += @s MagicTime

function main:id/search_start
execute positioned ^ ^ ^ as @e[tag=Fireball,tag=Charging,scores={ParentID=0}] run function trap:fireball/charge/continue2
function main:id/search_end

execute if score #World Interval matches 1 run playsound block.fire.ambient
execute if score # MagicTime matches 200 run playsound minecraft:block.amethyst_block.resonate master @s