scoreboard players set # MP 183
scoreboard players operation # MP *= @s MP
scoreboard players operation # MP /= @s MaxMP

experience set @s 38 levels
experience set @s 0 points

execute if score # MP matches 128.. run experience add @s 128 points
execute if score # MP matches 128.. run scoreboard players remove # MP 128
execute if score # MP matches 064.. run experience add @s 064 points
execute if score # MP matches 064.. run scoreboard players remove # MP 064
execute if score # MP matches 032.. run experience add @s 032 points
execute if score # MP matches 032.. run scoreboard players remove # MP 032
execute if score # MP matches 016.. run experience add @s 016 points
execute if score # MP matches 016.. run scoreboard players remove # MP 016
execute if score # MP matches 008.. run experience add @s 008 points
execute if score # MP matches 008.. run scoreboard players remove # MP 008
execute if score # MP matches 004.. run experience add @s 004 points
execute if score # MP matches 004.. run scoreboard players remove # MP 004
execute if score # MP matches 002.. run experience add @s 002 points
execute if score # MP matches 002.. run scoreboard players remove # MP 002
execute if score # MP matches 001.. run experience add @s 001 points

scoreboard players operation # MP = @s MP

experience set @s 0 levels

#execute if score # MP matches 128.. run experience add @s 128 levels
#execute if score # MP matches 128.. run scoreboard players remove # MP 128
#execute if score # MP matches 064.. run experience add @s 064 levels
#execute if score # MP matches 064.. run scoreboard players remove # MP 064
#execute if score # MP matches 032.. run experience add @s 032 levels
#execute if score # MP matches 032.. run scoreboard players remove # MP 032
#execute if score # MP matches 016.. run experience add @s 016 levels
#execute if score # MP matches 016.. run scoreboard players remove # MP 016
#execute if score # MP matches 008.. run experience add @s 008 levels
#execute if score # MP matches 008.. run scoreboard players remove # MP 008
#execute if score # MP matches 004.. run experience add @s 004 levels
#execute if score # MP matches 004.. run scoreboard players remove # MP 004
#execute if score # MP matches 002.. run experience add @s 002 levels
#execute if score # MP matches 002.. run scoreboard players remove # MP 002
#execute if score # MP matches 001.. run experience add @s 001 levels
#