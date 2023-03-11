title @s times 20 60 20
execute unless score Wave Display = # _ run title @s subtitle [""]
execute if score Wave Display = # _ run title @s subtitle [{"translate":"Final Wave","color":"green"}]

title @s title [{"text":"Wave ","color":"gold","underlined":true},{"score":{"name":"Wave","objective":"Display"}}]
playsound minecraft:block.bell.resonate master @s ~ ~ ~ 1 1
playsound minecraft:entity.zombie_villager.converted ambient @s ~ ~ ~ 1 1.2
