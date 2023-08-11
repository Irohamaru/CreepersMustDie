playsound block.beacon.power_select master @a ~ ~ ~ 0.8 2
playsound item.trident.thunder master @a ~ ~ ~ 0.3 2
playsound entity.lightning_bolt.thunder master @a ~ ~ ~ 0.5 1.4
particle dust 0 2 100000000 1.5 ~ ~3 ~ 0.2 1.5 0.2 1 30 force
particle end_rod ~ ~2 ~ 0 0 0 0.12 10 force

data modify storage mob: Damage set from storage trap: LightningSpireImpact
execute positioned ~-1 ~ ~-1 as @e[tag=Enemy,dx=1,dy=1,dz=1] positioned ~1 ~-0.3 ~1 facing entity @s feet run function mob:damage/
