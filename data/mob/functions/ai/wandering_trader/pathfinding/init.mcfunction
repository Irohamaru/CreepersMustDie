data modify storage ai: Pathfinding set from storage stage: Pathfinding
scoreboard players set #Success _ 0
function mob:ai/wandering_trader/pathfinding/loop
#execute if score #Success _ matches 0 run say エラー:探索ルートが見つかりません。
execute if score #Success _ matches 0 run kill @s

scoreboard players set @s Interval 50
