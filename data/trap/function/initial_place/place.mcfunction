#0 2 0 にloot後、召喚位置で実行
data modify storage item: Item set from block 0 2 0 Items[0]

tp 0-0-0-0-0 0.0 0.0 0.0 ~ ~
execute as 0-0-0-0-0 store result score # TrapRotation run data get entity @s Rotation[0]

summon item_display 0.5 0.5 0.5 {Tags:[Trap,InitialPlace],Rotation:[180f,0f],item:{id:"minecraft:carrot_on_a_stick",Count:1b}}

execute as @e[tag=InitialPlace,limit=1,x=0,y=0,z=0] run function trap:initial_place/place2
