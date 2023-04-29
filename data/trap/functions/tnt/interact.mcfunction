execute store success score # _ run tag @s add HoldTNT
execute if score # _ matches 0 run tag @s remove HoldTNT

execute if score # _ matches 1 run scoreboard players operation # ID = @s ID
execute as @e[type=interaction,tag=TNT,nbt={interaction:{}},distance=..8,limit=1,sort=nearest] run function trap:tnt/interact2

advancement revoke @s only trap:interact_tnt
