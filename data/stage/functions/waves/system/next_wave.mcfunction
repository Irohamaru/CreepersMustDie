scoreboard players add #Wave Interval 1
scoreboard players add Wave Display 1
title @s times 20 60 20
title @s title [{"text":"Wave ","color":"gold","underlined":true},{"score":{"name":"#Wave","objective":"Interval"}}]
playsound minecraft:block.bell.resonate master @s ~ ~ ~ 1 1
playsound minecraft:entity.zombie_villager.converted ambient @s ~ ~ ~ 1 1.2
