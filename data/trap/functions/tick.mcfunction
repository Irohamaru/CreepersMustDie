execute if entity @s[tag=Crystal] run function trap:crystal/
execute if entity @s[tag=Spikes] run function trap:spike_trap/
execute if entity @s[tag=BrimstoneTile] run function trap:brimstone_tile/
execute if entity @s[tag=ArrowWall] run function trap:arrow_wall/
execute if entity @s[tag=Arrow,type=armor_stand] run function trap:arrow_wall/arrow
execute if entity @s[tag=SlimePool] run function trap:slime_pool/
execute if entity @s[tag=Crusher] run function trap:crusher/
execute if entity @s[tag=Spring] run function trap:spring_trap/
execute if entity @s[tag=Mace] run function trap:swing_mace/
execute if entity @s[tag=Piston] run function trap:push_trap/
execute if entity @s[tag=MasherHead] run function trap:masher/
execute if entity @s[tag=IronGolem,nbt=!{AbsorptionAmount:1000000f}] run function trap:iron_golem/damaged
execute if entity @s[tag=VoidWall] run function trap:void_wall/
execute if entity @s[type=slime,tag=TNT,nbt=!{AbsorptionAmount:1000000f}] on vehicle run function trap:tnt/tick_ignited
execute if entity @s[type=silverfish,tag=TNT] run function trap:tnt/tick
execute if entity @s[type=slime,tag=TNT,nbt=!{AbsorptionAmount:1000000f}] on vehicle run function trap:tnt/tick
