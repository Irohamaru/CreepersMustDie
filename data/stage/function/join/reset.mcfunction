kill @e[tag=Mob]
execute as @e[tag=FixedTrap] at @s run function cursor:sell/remove
execute as @e[tag=Trap] run kill @s
kill @e[tag=Portal]
