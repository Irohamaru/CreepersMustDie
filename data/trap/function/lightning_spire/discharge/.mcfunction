data modify storage mob: Damage set from storage trap: LightningSpire

scoreboard players operation # X = @s X
execute positioned ~1.5 ~-0.5 ~-0.5 as @e[tag=LightningSpire,dx=6,dy=0,dz=0,sort=nearest,limit=1] positioned ~-1.5 ~0.5 ~0.5 run function trap:lightning_spire/discharge/x

scoreboard players operation # Z = @s Z
execute positioned ~-0.5 ~-0.5 ~1.5 as @e[tag=LightningSpire,dx=0,dy=0,dz=6,sort=nearest,limit=1] positioned ~0.5 ~0.5 ~-1.5 run function trap:lightning_spire/discharge/z

scoreboard players set @s[scores={Interval=280..}] Interval 0
