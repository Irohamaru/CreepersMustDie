execute if data entity @s data{Skip:1b} run data remove entity @s data.Waves[0].Loop
execute if data entity @s data{Skip:1b} run data modify entity @s data.Waves[0].Time set value 1
execute if data entity @s data{Skip:1b} run scoreboard players set @s Interval 1
