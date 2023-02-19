execute as @e[tag=FixedTrap] run data merge entity @s {Marker:0b,Glowing:0b}
scoreboard players set #World Interval 1

execute as @a[scores={Health=1..}] at @s if block ~ ~ ~ water run function player:drowned
