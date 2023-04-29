function main:id/search_start

scoreboard players reset # _
execute anchored eyes positioned ^ ^ ^ anchored feet store success score # _ as @e[type=item_display,tag=TNT,tag=Holded,distance=..8,sort=nearest,limit=1] on vehicle run tp @s ^ ^-0.5 ^2.5
execute unless score # _ matches 1 run tag @s remove HoldTNT

function main:id/search_end
