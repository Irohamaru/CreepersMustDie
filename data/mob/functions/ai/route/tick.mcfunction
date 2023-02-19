#1.. プレイヤーがいる
#..0 プレイヤーがいない
#0   プレイヤーを探索 -> 1..に

scoreboard players remove @s[scores={Interval=1..}] Interval 1
scoreboard players add @s[scores={Interval=..-1}] Interval 1
scoreboard players add @s[scores={StackTime=..-1}] StackTime 1

execute if score #World Interval matches 1 unless score @s Stun matches 1.. run function mob:ai/route/stack/check

execute if score @s Interval matches 0..1 run function mob:ai/route/search_target
execute if score @s Interval matches 1.. positioned ~ ~-50 ~ as @e[type=wandering_trader,scores={ParentID=0},distance=..8] run tp @s ~ ~ ~ ~ ~
execute if score @s Interval matches ..0 positioned ~ ~-50 ~ at @e[type=wandering_trader,scores={ParentID=0},distance=..8] positioned ~ ~50 ~ run tp @s ~ ~ ~ ~ ~
execute positioned ~ ~-50 ~ run scoreboard players set @e[type=wandering_trader,scores={ParentID=0},distance=..8] Interval 1
