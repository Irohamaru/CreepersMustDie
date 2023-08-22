#自然ダメージ反映
execute store result score _ _ run data get entity @s AbsorptionAmount -1
scoreboard players add _ _ 2048
execute store result score # _ run data get entity @s Health
execute store result entity @s Health float 1 run scoreboard players operation # _ -= _ _
#AbsorptionAmountを2048に戻す
data modify entity @s AbsorptionAmount set value 2048f

scoreboard players add @s Interval 10
