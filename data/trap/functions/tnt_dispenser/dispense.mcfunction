summon item_display ^ ^-0.5 ^1 {Tags:[Trap,TNT,Parent],Team:"Red",item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:130}}}
execute positioned ^ ^-0.5 ^1 as @e[tag=TNT,distance=..0.01,limit=1] run function trap:tnt/init

#TNTのParentIDはHoldしたプレイヤーと親、親と子の紐づけで全て使用済みなのでGroupでリンク
scoreboard players operation # ID = @s ID
execute positioned ^ ^-0.5 ^1 as @e[tag=TNT,type=item_display,distance=..0.01,limit=1] run scoreboard players operation @s Group = # ID

scoreboard players set @s Interval 0

playsound block.piston.extend master @a
particle smoke ^ ^ ^1 0.1 0.1 0.1 0.05 3 force
