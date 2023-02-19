particle explosion_emitter
execute as @a at @s run playsound minecraft:entity.wither.death master @s ~ ~ ~ 1 2
title @a title {"text":"防衛失敗...","color":"red","underlined":true}
execute as @e[tag=Portal] run data modify entity @s data.Waves set value [{System:"Message",Loop:1,Time:5,Tellraw:'{"translate":"Return to the Lobby After 5 Seconds","color":"green"}'},{System:"BackToLobby",Loop:1,Time:1},{Loop:1,Time:1000000}]
scoreboard players set @e[tag=Portal] Interval 1000000
scoreboard players set @e[tag=Portal,limit=1] Interval 20
tag @s add Broken
