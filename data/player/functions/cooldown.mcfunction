# @s Interval = max cooldown
# @s current = current cooldown
# percent  = 20 * current cooldown / max cooldown

scoreboard players remove @s Cooldown 1

scoreboard players set # Cooldown 20
scoreboard players operation # Cooldown *= @s Cooldown
scoreboard players operation # Cooldown /= @s Interval

execute if score # Cooldown matches 00 run title @s actionbar [""]
execute if score # Cooldown matches 01 run title @s actionbar [{"text":"▍","color":"green"},{"text":"▍▍▍▍▍▍▍▍▍▍▍▍▍▍▍▍▍▍▍","color":"red"}]
execute if score # Cooldown matches 02 run title @s actionbar [{"text":"▍▍","color":"green"},{"text":"▍▍▍▍▍▍▍▍▍▍▍▍▍▍▍▍▍▍","color":"red"}]
execute if score # Cooldown matches 03 run title @s actionbar [{"text":"▍▍▍","color":"green"},{"text":"▍▍▍▍▍▍▍▍▍▍▍▍▍▍▍▍▍","color":"red"}]
execute if score # Cooldown matches 04 run title @s actionbar [{"text":"▍▍▍▍","color":"green"},{"text":"▍▍▍▍▍▍▍▍▍▍▍▍▍▍▍▍","color":"red"}]
execute if score # Cooldown matches 05 run title @s actionbar [{"text":"▍▍▍▍▍","color":"green"},{"text":"▍▍▍▍▍▍▍▍▍▍▍▍▍▍▍","color":"red"}]
execute if score # Cooldown matches 06 run title @s actionbar [{"text":"▍▍▍▍▍▍","color":"green"},{"text":"▍▍▍▍▍▍▍▍▍▍▍▍▍▍","color":"red"}]
execute if score # Cooldown matches 07 run title @s actionbar [{"text":"▍▍▍▍▍▍▍","color":"green"},{"text":"▍▍▍▍▍▍▍▍▍▍▍▍▍","color":"red"}]
execute if score # Cooldown matches 08 run title @s actionbar [{"text":"▍▍▍▍▍▍▍▍","color":"green"},{"text":"▍▍▍▍▍▍▍▍▍▍▍▍","color":"red"}]
execute if score # Cooldown matches 09 run title @s actionbar [{"text":"▍▍▍▍▍▍▍▍▍","color":"green"},{"text":"▍▍▍▍▍▍▍▍▍▍▍","color":"red"}]
execute if score # Cooldown matches 10 run title @s actionbar [{"text":"▍▍▍▍▍▍▍▍▍▍","color":"green"},{"text":"▍▍▍▍▍▍▍▍▍▍","color":"red"}]
execute if score # Cooldown matches 11 run title @s actionbar [{"text":"▍▍▍▍▍▍▍▍▍▍▍","color":"green"},{"text":"▍▍▍▍▍▍▍▍▍","color":"red"}]
execute if score # Cooldown matches 12 run title @s actionbar [{"text":"▍▍▍▍▍▍▍▍▍▍▍▍","color":"green"},{"text":"▍▍▍▍▍▍▍▍","color":"red"}]
execute if score # Cooldown matches 13 run title @s actionbar [{"text":"▍▍▍▍▍▍▍▍▍▍▍▍▍","color":"green"},{"text":"▍▍▍▍▍▍▍","color":"red"}]
execute if score # Cooldown matches 14 run title @s actionbar [{"text":"▍▍▍▍▍▍▍▍▍▍▍▍▍▍","color":"green"},{"text":"▍▍▍▍▍▍","color":"red"}]
execute if score # Cooldown matches 15 run title @s actionbar [{"text":"▍▍▍▍▍▍▍▍▍▍▍▍▍▍▍","color":"green"},{"text":"▍▍▍▍▍","color":"red"}]
execute if score # Cooldown matches 16 run title @s actionbar [{"text":"▍▍▍▍▍▍▍▍▍▍▍▍▍▍▍▍","color":"green"},{"text":"▍▍▍▍","color":"red"}]
execute if score # Cooldown matches 17 run title @s actionbar [{"text":"▍▍▍▍▍▍▍▍▍▍▍▍▍▍▍▍▍","color":"green"},{"text":"▍▍▍","color":"red"}]
execute if score # Cooldown matches 18 run title @s actionbar [{"text":"▍▍▍▍▍▍▍▍▍▍▍▍▍▍▍▍▍▍","color":"green"},{"text":"▍▍","color":"red"}]
execute if score # Cooldown matches 19 run title @s actionbar [{"text":"▍▍▍▍▍▍▍▍▍▍▍▍▍▍▍▍▍▍▍","color":"green"},{"text":"▍","color":"red"}]
