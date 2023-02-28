#自然ダメージ反映
execute store result score _ _ run data get entity @s AbsorptionAmount -1
scoreboard players add _ _ 1000000
scoreboard players operation @s HP -= _ _
#AbsorptionAmountを1000000に戻す
data modify entity @s AbsorptionAmount set value 1000000f

execute if score _ _ matches 2.. run function mob:ai/route/stack/reset
execute if score _ _ matches 2.. run scoreboard players add @s[scores={Interval=..0}] Interval 40
