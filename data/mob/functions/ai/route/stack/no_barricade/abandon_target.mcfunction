scoreboard players set #RandMod _ 200
function main:random
scoreboard players remove #RandMod _ 200
scoreboard players operation @s Interval = #RandMod _
