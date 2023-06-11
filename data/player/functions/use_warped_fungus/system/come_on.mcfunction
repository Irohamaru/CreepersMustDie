tellraw @a [{"selector":"@s","color":"yellow"},{"text":": "},{"translate":"Come On!","color":"aqua"}]
summon minecraft:text_display ~ ~1.3 ~ {Tags:[Message],text:'{"translate":"Come On!","color":"aqua"}',billboard:"vertical",see_through:true,text_opacity:1}
execute as @a at @s run playsound minecraft:entity.wandering_trader.yes master @s ~ ~ ~ 1 1.5
