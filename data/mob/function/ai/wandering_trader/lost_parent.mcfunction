#親を消失 = creeperが爆発
scoreboard players set # BeaconDamage 10
execute positioned ~ ~50 ~ as @e[tag=Barricade,distance=..3] run function trap:barricade/attacked

kill @s
