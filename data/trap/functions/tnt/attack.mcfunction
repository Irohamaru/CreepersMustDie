execute as @e[type=interaction,tag=TNT,nbt={attack:{}},distance=..8,limit=1,sort=nearest] on vehicle on passengers run data modify entity @s[type=slime] AbsorptionAmount set value 999999f
advancement revoke @s only trap:attack_tnt
