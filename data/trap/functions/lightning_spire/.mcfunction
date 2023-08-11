execute on passengers at @s run tp @s ~ ~ ~ ~13 ~
scoreboard players add @s Interval 1
execute if entity @s[scores={Interval=115}] run function trap:lightning_spire/discharge/impact
execute if entity @s[scores={Interval=120..}] run function trap:lightning_spire/discharge/
