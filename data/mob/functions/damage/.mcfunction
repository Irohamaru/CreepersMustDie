scoreboard players set _ HP 0
execute store result score _ _ run data get storage mob: Damage.Physical
execute if score _ _ matches 1.. run particle item nether_wart ~ ~1 ~ 0.2 0.5 0.2 0.1 30 force
scoreboard players operation _ HP += _ _

execute store result score _ _ run data get storage mob: Damage.Fire
scoreboard players operation _ HP += _ _

execute store result score _ _ run data get storage mob: Damage.Lightning
scoreboard players operation _ HP += _ _

scoreboard players operation @s HP -= _ HP

data modify entity 0-0-0-0-1 Owner set from entity @s ArmorItems[3].tag.Owner

function mob:ai/route/stack/reset
scoreboard players add @s[scores={Interval=..-30}] Interval 30

execute if data storage mob: Damage.Stun run function mob:damage/stun
execute if data storage mob: Damage.Motion run function mob:damage/motion_init
execute if data storage mob: Damage.Motion run function mob:damage/motion with storage mob: Damage
execute if data storage mob: Damage.Falling run data modify entity @s FallDistance set from storage mob: Damage.Falling

#ダメージ演出
effect give @s instant_damage 1 127 true
effect give @s instant_health 1 127 true

execute as 0-0-0-0-1 on origin run scoreboard players set @s Interval 50
