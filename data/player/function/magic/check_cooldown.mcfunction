execute unless entity @s[scores={Cooldown=1..}] run function player:magic/tick
execute if entity @s[scores={Cooldown=1..}] run scoreboard players reset @s UsingMagic

advancement revoke @s only player:magic
