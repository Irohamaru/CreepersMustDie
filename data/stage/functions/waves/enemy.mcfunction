data modify entity @s Tags append from storage stage: Wave.Enemy[0]
function mob:summon/set_pos
data modify entity @s Tags set value [Portal]

data modify storage stage: Wave.Enemy append from storage stage: Wave.Enemy[0]
data remove storage stage: Wave.Enemy[0]
