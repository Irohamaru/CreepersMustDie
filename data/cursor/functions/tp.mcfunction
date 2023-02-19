function main:id/search_start
execute unless entity @e[tag=PlacingTrap,scores={ParentID=0}] run function cursor:summon
scoreboard players set @e[tag=PlacingTrap,limit=1,distance=..0.01] ParentID 0

data modify entity @e[tag=PlacingTrap,limit=1,distance=..0.01] ArmorItems[3].tag.CustomModelData set from storage item: Item.tag.CustomModelData
execute if data storage item: Item.tag.Pose run data modify entity @e[tag=PlacingTrap,limit=1,distance=..0.01] Pose set from storage item: Item.tag.Pose
execute unless data storage item: Item.tag.Pose run data remove entity @e[tag=PlacingTrap,limit=1,distance=..0.01] Pose
tp @e[tag=PlacingTrap,scores={ParentID=0}] ~ ~ ~

execute if score _ Emerald <= Emerald Display run team join Green @e[tag=PlacingTrap,scores={ParentID=0}]
execute unless score _ Emerald <= Emerald Display run team join Red @e[tag=PlacingTrap,scores={ParentID=0}]

function main:id/search_end

execute if entity @s[scores={UseCarrotStick=1..,Stage=1..}] unless score _ Emerald <= Emerald Display run playsound minecraft:block.dispenser.fail master @s
execute if entity @s[scores={UseCarrotStick=1..,Stage=1..}] if score _ Emerald <= Emerald Display as @e[tag=PlacingTrap,limit=1,distance=..0.01] at @s run function cursor:place
