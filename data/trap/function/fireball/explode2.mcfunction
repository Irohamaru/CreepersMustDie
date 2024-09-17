scoreboard players set #Success _ 1

playsound entity.generic.explode master @a ~ ~ ~ 2
playsound block.fire.ambient master @a ~ ~ ~ 2
$particle flame ~ ~ ~ $(DeltaFlame) $(DeltaFlame) $(DeltaFlame) $(Speed) $(Count) force
$particle dust{color:[100000000,100,0],scale:$(Scale)} ^ ^ ^ $(DeltaDust) $(DeltaDust) $(DeltaDust) 1 $(Count) force

execute on passengers run kill @s
kill @s

data modify storage mob: Damage set from storage trap: Fireball

execute positioned ~-0.5 ~-0.5 ~-0.5 run tag @e[tag=Mob,dx=0,dy=0,dz=0] add BoxTarget
execute as @e[tag=Enemy,tag=BoxTarget,distance=..4] facing entity @s eyes positioned as @s run function mob:damage/
$execute as @e[tag=Enemy,tag=!BoxTarget,distance=..$(Distance)] facing entity @s eyes positioned as @s run function mob:damage/
tag @e[tag=Enemy,tag=BoxTarget,distance=..1] remove BoxTarget
