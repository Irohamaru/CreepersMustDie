function main:id/search_start
execute unless entity @e[tag=PlacingTrap,scores={ParentID=0}] run function cursor:summon

tp @e[tag=PlacingTrap,scores={ParentID=0}] ~ ~ ~

execute if score _ Emerald <= Emerald Display run team join Green @e[tag=PlacingTrap,scores={ParentID=0}]
execute unless score _ Emerald <= Emerald Display run team join Red @e[tag=PlacingTrap,scores={ParentID=0}]

function main:id/search_end

execute if entity @s[scores={UseCarrotStick=1..,Stage=1..}] unless score _ Emerald <= Emerald Display run playsound minecraft:block.dispenser.fail master @s
execute if entity @s[scores={UseCarrotStick=1..,Stage=1..}] if score _ Emerald <= Emerald Display as @e[tag=PlacingTrap,limit=1,distance=..0.01] at @s run function cursor:place
