#線形合同法による0~1000000-1の乱数生成 #rand*21+3 mod 1000000
scoreboard players operation #Rand _ *= #21 _
scoreboard players add #Rand _ 3
scoreboard players operation #Rand _ %= #1000000 _

#0~RandMod-1の乱数生成 #RandMod*#rand/1000000 #RandMod=1~2147
scoreboard players operation #RandMod _ *= #Rand _
scoreboard players operation #RandMod _ /= #1000000 _
