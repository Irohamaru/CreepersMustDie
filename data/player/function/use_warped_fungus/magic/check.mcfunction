execute if score @s Cooldown matches 1.. run title @s actionbar {"translate":"On Cooldown!","color":"red"}
execute if score @s Cooldown matches 1.. run playsound block.dispenser.fail master @s ~ ~ ~ 1 1

execute unless score @s Cooldown matches 1.. run function player:use_warped_fungus/magic/success
