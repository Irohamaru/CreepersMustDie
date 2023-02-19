execute as @e[tag=FixedTrap] at @s run function cursor:sell/remove
kill @e[tag=Trap]
kill @e[tag=Mob]
kill @e[tag=Portal]
kill @e[tag=Crystal]
scoreboard players reset #World Stage
scoreboard players reset Emerald Display
scoreboard players reset Wave Display
bossbar set crystal visible false

execute as @a run function stage:move/leave

function achievements:stage_book/
function achievements:chest/update
