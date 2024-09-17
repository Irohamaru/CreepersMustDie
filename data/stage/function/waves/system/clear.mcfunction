title @a times 20 100 20
title @a subtitle {"translate":"Return to the Lobby After 5 Seconds","bold":true,"color":"green"}
title @a title [{"translate":"Defense Completed!","color":"gold","underlined":true}]
data modify storage stage: Wave.Loop set value 0
scoreboard players set @s Interval 0

execute as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1
execute as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 0.8

execute at @e[tag=Crystal] run clone ~-0.5 ~-3 ~-0.5 ~-0.5 ~-3 ~-0.5 ~-0.5 ~-3 ~-0.5 replace force
