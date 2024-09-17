#TNTのParentIDはHoldしたプレイヤーと親、親と子の紐づけで全て使用済みなのでGroupでリンク
scoreboard players operation * Group -= @s ID

execute store result score # _ if entity @e[tag=TNT,type=item_display,scores={Group=0}]

scoreboard players operation * Group += @s ID

execute if score # _ matches ..2 run function trap:tnt_dispenser/dispense
execute if score # _ matches 3.. run scoreboard players set @s Interval 500

