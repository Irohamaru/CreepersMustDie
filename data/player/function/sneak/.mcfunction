#スニーク時

#スニーク開始
execute if entity @s[gamemode=adventure,scores={Sneak=1}] run function player:sneak/start

#スニーク終了
execute if entity @s[gamemode=adventure,scores={Sneak=2}] run function player:sneak/end

scoreboard players operation @s Sneak *= #2 _
scoreboard players operation @s Sneak %= #4 _
