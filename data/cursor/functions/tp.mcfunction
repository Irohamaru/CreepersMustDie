function main:id/search_start

execute store result score # X run data get storage item: Item.tag.CustomModelData
execute store result score # Y run data get entity @e[type=item_display,tag=PlacingTrap,scores={ParentID=0},limit=1] item.tag.CustomModelData
execute unless score # X = # Y run kill @e[tag=PlacingTrap,scores={ParentID=0}]

execute unless entity @e[tag=PlacingTrap,scores={ParentID=0}] run function cursor:summon

tp @e[type=armor_stand,tag=PlacingTrap,scores={ParentID=0}] ~ ~ ~

execute if score _ Emerald <= Emerald Display run team join Green @e[tag=PlacingTrap,scores={ParentID=0}]
execute unless score _ Emerald <= Emerald Display run team join Red @e[tag=PlacingTrap,scores={ParentID=0}]

execute if entity @s[scores={UseCarrotStick=1..,Stage=1..}] unless score _ Emerald <= Emerald Display run playsound minecraft:block.dispenser.fail master @s
execute if entity @s[scores={UseCarrotStick=1..,Stage=1..}] if score _ Emerald <= Emerald Display as @e[type=item_display,tag=PlacingTrap,scores={ParentID=0}] at @s run function cursor:place

function main:id/search_end
