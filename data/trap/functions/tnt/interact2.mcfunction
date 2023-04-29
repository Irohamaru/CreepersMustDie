data remove entity @s interaction

execute if score # _ matches 1 on vehicle run tag @s add Holded
execute if score # _ matches 1 on vehicle run function main:id/link
execute if score # _ matches 1 run playsound minecraft:entity.item.pickup master @a ~ ~ ~ 1 1.6

execute if score # _ matches 0 on vehicle run tag @s remove Holded
execute if score # _ matches 0 on vehicle run scoreboard players set @s ParentID 0
execute if score # _ matches 0 on vehicle on vehicle run function trap:tnt/throw
