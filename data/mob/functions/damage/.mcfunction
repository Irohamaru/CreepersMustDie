scoreboard players set _ HP 0
execute store result score _ _ run data get storage mob: Damage.Physical
execute if score _ _ matches 1.. run particle item nether_wart ~ ~1 ~ 0.2 0.5 0.2 0.1 30 force
scoreboard players operation _ HP += _ _

execute store result score _ _ run data get storage mob: Damage.Fire
scoreboard players operation _ HP += _ _

scoreboard players operation @s HP -= _ HP

scoreboard players set @s StackTime -20
scoreboard players add @s[scores={Interval=..-30}] Interval 30

execute if data storage mob: Damage.Stun run function mob:damage/stun
execute if data storage mob: Damage.Motion run function mob:damage/motion
execute if data storage mob: Damage.Falling run data modify entity @s FallDistance set from storage mob: Damage.Falling

#ダメージ演出
effect give @s instant_damage 1 127 true
effect give @s instant_health 1 127 true

function main:id/search_start
execute positioned ~ ~-50 ~ run scoreboard players set @e[type=wandering_trader,scores={ParentID=0},distance=..8] Interval 50
function main:id/search_end
