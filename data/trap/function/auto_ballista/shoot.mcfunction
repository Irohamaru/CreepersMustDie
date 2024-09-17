summon minecraft:armor_stand ~ ~ ~ {Tags:[AB.ShootedArrow,Trap],Team:Red,Invisible:1b,Marker:1b,Passengers:[{id:"minecraft:item_display",Tags:[AB.ShootedArrow,Trap],Team:Red,item:{id:"minecraft:carrot_on_a_stick",Count:1b,components:{"minecraft:custom_model_data":163}}}]}
execute on vehicle on passengers if entity @s[tag=AB.Arms] run data modify entity @s transformation.scale[2] set value 2.1f
execute on vehicle on passengers if entity @s[tag=AB.Arrow] run data modify entity @s transformation.translation[2] set value 0f
execute on vehicle on passengers if entity @s[tag=AB.Tray] run data modify entity @s transformation.translation[2] set value 0f
tp @e[tag=AB.ShootedArrow,distance=..0.01] ~ ~ ~ ~ ~
data modify entity @e[tag=AB.ShootedArrow,type=item_display,distance=..1,limit=1] transformation set from entity @s transformation

playsound minecraft:item.trident.throw master @a ~ ~ ~ 1 1
playsound minecraft:entity.arrow.shoot master @a ~ ~ ~ 1 0.5

execute on vehicle run scoreboard players set @s Interval 0
