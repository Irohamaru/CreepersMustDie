execute anchored eyes run summon armor_stand ^ ^ ^1.5 {Tags:[Trap,Fireball,Charging],Small:1b,Marker:1b,Invisible:1b,Passengers:[{id:"minecraft:item_display",item:{id:"minecraft:carrot_on_a_stick",Count:1b,components:{"minecraft:custom_model_data":100010}},transformation:{left_rotation:[0f,0f,0f,1f],scale:[0.06f,0.06f,0.06f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]},interpolation_duration:50}]}

execute anchored eyes positioned ^ ^ ^1.5 run scoreboard players operation @e[tag=Fireball,distance=..0.01,limit=1,sort=nearest] ParentID = @s ID
execute anchored eyes positioned ^ ^ ^1.5 run scoreboard players set @e[tag=Fireball,distance=..0.01,limit=1,sort=nearest] MagicTime 30
execute anchored eyes positioned ^ ^ ^1.5 run tp @e[tag=Fireball,distance=..0.01,limit=1,sort=nearest] ^ ^ ^ ~ ~

