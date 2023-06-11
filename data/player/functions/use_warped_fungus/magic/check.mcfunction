execute store result score # MP run data get entity @s SelectedItem.tag.MP

execute unless score @s MP >= # MP run title @s actionbar {"translate":"Not Enough MP!","color":"red"}
execute unless score @s MP >= # MP run playsound block.dispenser.fail master @s ~ ~ ~ 1 1
execute if score @s Cooldown matches 1.. run title @s actionbar {"translate":"On Cooldown!","color":"red"}
execute if score @s Cooldown matches 1.. run playsound block.dispenser.fail master @s ~ ~ ~ 1 1

execute unless score @s Cooldown matches 1.. if score @s MP >= # MP run function player:use_warped_fungus/magic/success
