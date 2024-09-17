data modify storage item: Item set from entity @s SelectedItem

#開始
execute if entity @s[scores={UsingMagic=1}] run function player:magic/start

#継続
execute if entity @s[scores={UsingMagic=3}] run function player:magic/continue

#終了
execute if entity @s[scores={UsingMagic=2}] run function player:magic/end

scoreboard players operation @s UsingMagic *= #2 _
scoreboard players operation @s UsingMagic %= #4 _
