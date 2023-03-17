execute as @e[tag=FixedTrap] at @s run function cursor:sell/remove
kill @e[tag=Trap]
kill @e[tag=Mob]
kill @e[tag=Portal]
kill @e[tag=Crystal]
kill @e[type=item]
kill @e[type=#impact_projectiles]

execute as @a if score #World Stage = @s Stage run function stage:leave/leave

scoreboard players reset #World Stage
scoreboard players reset Emerald Display
scoreboard players reset Wave Display
bossbar set crystal visible false

function achievements:stage_book/
function achievements:chest/update
