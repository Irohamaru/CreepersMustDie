scoreboard players add #Combo _ 1
scoreboard players set #Combo Interval 20

scoreboard players operation Combo Display = #Combo _
#nコンボ目でfloor(n/3)エメラルド追加
scoreboard players operation # _ = #Combo _
scoreboard players operation # _ /= #3 _
scoreboard players operation Emerald Display += # _

