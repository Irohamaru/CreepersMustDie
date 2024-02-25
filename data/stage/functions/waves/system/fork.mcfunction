execute if data storage stage: Wave{System:"NextWave"} run function stage:waves/system/next_wave
execute if data storage stage: Wave{System:"ShortInterval"} as @a at @s run function stage:waves/system/short_interval
execute if data storage stage: Wave{System:"End"} unless entity @e[tag=Enemy] run function stage:waves/system/clear
execute if data storage stage: Wave{System:"Message"} run function stage:waves/system/message
execute if data storage stage: Wave{System:"BackToLobby"} run function stage:leave/close
execute if data storage stage: Wave{System:"Command"} run function stage:waves/system/command with storage stage: Wave
