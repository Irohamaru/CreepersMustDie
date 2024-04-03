execute anchored eyes run summon armor_stand ^ ^ ^1.5 {Tags:[Trap,Fireball],Small:1b,Marker:1b,Invisible:1b,Passengers:[{id:"minecraft:item_display",item:{id:"minecraft:carrot_on_a_stick",Count:1b,components:{"minecraft:custom_model_data":100010}},transformation:{left_rotation:[0f,0f,0f,1f],scale:[0.2f,0.2f,0.2f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]},interpolation_duration:50}]}
execute anchored eyes positioned ^ ^ ^1.5 run tp @e[tag=Fireball,distance=..0.01] ^ ^ ^ ~ ~
execute anchored eyes positioned ^ ^ ^1.5 run scoreboard players set @e[tag=Fireball,distance=..0.01] Interval 60

playsound entity.blaze.shoot master @a ~ ~ ~
