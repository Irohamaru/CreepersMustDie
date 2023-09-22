scoreboard players operation # Interval = @s Interval

execute on passengers if entity @s[tag=AB.Arms] store result entity @s transformation.scale[2] float 0.0333 run scoreboard players get # Interval
scoreboard players remove # Interval 60
execute on passengers if entity @s[tag=AB.Arrow] store result entity @s transformation.translation[2] float -0.00833 run scoreboard players get # Interval
execute on passengers if entity @s[tag=AB.Tray] store result entity @s transformation.translation[2] float -0.00833 run scoreboard players get # Interval

execute if score @s Interval matches 60 run playsound minecraft:item.crossbow.quick_charge_1 master @a ~ ~ ~ 0.5 0
