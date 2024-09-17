scoreboard players set @s Emerald 0

function main:id/search_start
function mob:ai/enemy/kill
function main:id/search_end

execute if score @s BeaconDamage matches 1.. run function trap:crystal/damaged
