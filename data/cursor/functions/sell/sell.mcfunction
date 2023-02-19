scoreboard players operation @s[tag=Barricade] Emerald *= @s HP
scoreboard players operation @s[tag=Barricade] Emerald /= @s MaxHP

execute store result score @s[tag=IronGolem] HP run data get entity @s Health
scoreboard players operation @s[tag=IronGolem] Emerald *= @s HP
scoreboard players operation @s[tag=IronGolem] Emerald /= #100 _

scoreboard players operation Emerald Display += @s Emerald

function cursor:sell/remove

particle block_marker barrier
playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 2
