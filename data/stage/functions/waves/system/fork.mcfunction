data modify entity @s Tags append from storage stage: Wave.System

execute if entity @s[tag=NextWave] run function stage:waves/system/next_wave
execute if entity @s[tag=ShortInterval] as @a at @s run function stage:waves/system/short_interval
execute if entity @s[tag=End] unless entity @e[tag=Enemy] run function stage:waves/system/clear
execute if entity @s[tag=Message] run function stage:waves/system/message
execute if entity @s[tag=BackToLobby] run function stage:leave/close

data modify entity @s Tags set value [Trap,Crystal]
