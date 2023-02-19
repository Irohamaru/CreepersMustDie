scoreboard players add @s Interval 1
execute if score @s Interval matches 1 run function trap:spike_trap/sting
execute if score @s Interval matches 45..52 run function trap:spike_trap/return
execute if score @s Interval matches 60..62 run function trap:spike_trap/return
execute if score @s Interval matches 100.. positioned ~-0.75 ~ ~-0.75 if entity @e[tag=Enemy,dx=0.5,dy=0.5,dz=0.5] run scoreboard players set @s Interval 0
