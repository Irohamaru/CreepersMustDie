execute store result score # _ if data entity 0-0-0-0-0 Tags[]
data modify entity 0-0-0-0-0 Tags append from entity @s ArmorItems[3].tag.EnemyID
execute store result score _ _ if data entity 0-0-0-0-0 Tags[]

data modify storage mob: Damage set from storage trap: AutoBallista
execute if score # _ < _ _ positioned as @s rotated ~ -30 run function mob:damage/
