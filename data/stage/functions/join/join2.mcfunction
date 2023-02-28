#as 0-0-0-0-0で実行
data modify entity @s Pos set from storage stage: CrystalPos
execute at @s run tp @a[tag=Joining] ~ ~1 ~
tp @s 0.0 0.0 0.0
