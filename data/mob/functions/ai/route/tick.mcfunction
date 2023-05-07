#1.. プレイヤーがいる
#..0 プレイヤーがいない
#0   プレイヤーを探索 -> 1..に

scoreboard players remove @s[scores={Interval=1..}] Interval 1
scoreboard players add @s[scores={Interval=..-1}] Interval 1
scoreboard players add @s[scores={StackTime=..-1}] StackTime 1

execute if score #World Interval matches 1 if score @s StackTime matches 0.. run function mob:ai/route/stack/check

execute if score @s Interval matches 0..1 run function mob:ai/route/search_target
scoreboard players operation # ID = @s ID
execute if score @s Interval matches 1.. on passengers on origin run tp @s ~ ~-50 ~ ~ ~
execute if score @s Interval matches ..0 on passengers on origin at @s positioned ~ ~50 ~ as @e[tag=RouteAI,distance=..8] if score @s ID = # ID run tp @s ~ ~ ~ ~ ~
execute on passengers on origin run scoreboard players set @s Interval 1
