data modify storage mob: Damage set from storage trap: Snowball

execute as @e[tag=Snowball] at @s run function trap:snow_golem/snowball/hit2

tp 0-0-0-0-0 0.0 0.0 0.0
advancement revoke @s only trap:snowball_hit
