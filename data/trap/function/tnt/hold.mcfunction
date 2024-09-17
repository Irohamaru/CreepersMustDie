function main:id/search_start

scoreboard players set # _ 30
execute anchored eyes positioned ^ ^ ^ anchored feet as @e[type=item_display,tag=TNT,tag=Holded,scores={ParentID=0},distance=..8,sort=nearest,limit=1] on vehicle run function trap:tnt/hold2
execute if score # _ matches 30 run tag @s remove HoldTNT

function main:id/search_end
