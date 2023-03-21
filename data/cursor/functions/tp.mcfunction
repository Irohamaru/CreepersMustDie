tp 0-0-0-0-0 0.0 0.0 0.0 ~180 ~
scoreboard players operation # TrapRotation = @s TrapRotation
#壁のとき
execute as 0-0-0-0-0 if entity @s[x_rotation=0] store result score # TrapRotation run data get entity @s Rotation[0]

function main:id/search_start

tp @e[tag=PlacingTrap,scores={ParentID=0}] ~ ~ ~

#CMD不一致のときkill
execute store result score # X run data get storage item: Item.tag.CustomModelData
execute store result score # Y run data get entity @e[type=item_display,tag=PlacingTrap,scores={ParentID=0},distance=..0.01,limit=1] item.tag.CustomModelData
execute unless score # X = # Y run kill @e[tag=PlacingTrap,scores={ParentID=0},distance=..0.01]

#向き不一致のときkill
execute unless score @e[type=item_display,tag=PlacingTrap,scores={ParentID=0},distance=..0.01,limit=1] TrapRotation = # TrapRotation run kill @e[tag=PlacingTrap,scores={ParentID=0},distance=..0.01]

execute unless entity @e[tag=PlacingTrap,scores={ParentID=0}] run function cursor:summon

execute if score _ Emerald <= Emerald Display run team join Green @e[tag=PlacingTrap,scores={ParentID=0},distance=..0.01]
execute unless score _ Emerald <= Emerald Display run team join Red @e[tag=PlacingTrap,scores={ParentID=0},distance=..0.01]

execute if entity @s[scores={UseCarrotStick=1..,Stage=1..}] unless score _ Emerald <= Emerald Display run playsound minecraft:block.dispenser.fail master @s
execute if entity @s[scores={UseCarrotStick=1..,Stage=1..}] if score _ Emerald <= Emerald Display as @e[type=item_display,tag=PlacingTrap,scores={ParentID=0},distance=..0.01] run function cursor:place

function main:id/search_end

#Place後
execute as @e[tag=FixedTrap,distance=..0.01] at @s run function trap:init
