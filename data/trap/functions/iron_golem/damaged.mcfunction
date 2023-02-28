#自然ダメージ反映
execute store result score _ _ run data get entity @s AbsorptionAmount -1
scoreboard players add _ _ 1000000
execute store result score # _ run data get entity @s Health
execute store result entity @s Health float 1 run scoreboard players operation # _ -= _ _
#AbsorptionAmountを1000000に戻す
data modify entity @s AbsorptionAmount set value 1000000f
