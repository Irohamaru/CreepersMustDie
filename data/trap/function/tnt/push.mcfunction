execute as 0-0-0-0-0 positioned 0.0 0.0 0.0 positioned ^ ^ ^0.1 run tp @s ^ ^ ^
data modify storage ai: Pos set from entity 0-0-0-0-0 Pos
data modify storage ai: Pos[1] set from entity @s Motion[1]
data modify entity @s Motion set from storage ai: Pos
