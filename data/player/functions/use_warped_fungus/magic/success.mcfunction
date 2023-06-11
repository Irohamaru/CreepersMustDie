execute store result score @s Interval run data get entity @s SelectedItem.tag.Cooldown
scoreboard players operation @s Cooldown = @s Interval

scoreboard players operation @s MP -= # MP
function player:mp/set_bar

execute if data entity @s SelectedItem.tag.FireBracelet run function trap:fireball/act
