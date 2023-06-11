tellraw @a [{"selector":"@s","color":"yellow"},{"text":": "},{"translate":"I'm Ready!","color":"green"}]
summon minecraft:text_display ~ ~1.3 ~ {Tags:[Trap,Message],text:'{"translate":"I\'m Ready!","color":"green"}',billboard:"vertical",see_through:true,text_opacity:1}
execute as @a at @s run playsound minecraft:entity.wandering_trader.yes master @s ~ ~ ~ 1 1.5

tag @s add Ready
